import FirebaseAuth
import ScadeKit

class SignUpPageAdapter: SCDLatticePageAdapter {

  // page adapter initialization
  override func load(_ path: String) {
    super.load(path)

    self.signInButton.onClick { _ in
      self.navigation!.go(page: "login.page", transition: SCDLatticeTransition.fromRight)
    }

    self.signUpButton.onClick { _ in self.signUpButtonTapped()

    }

    self.passwordTextbox.keyboardType = .number

  }

  private func signUpButtonTapped() {

    let name = nameTextbox.text
    let email = emailTextbox.text
    let password = passwordTextbox.text
    guard !name.isEmpty, !email.isEmpty, !password.isEmpty, password.count >= 8
    else {
      self.alertUserLoginErrorLabel.text =
        "Please enter all details correctly to create a new account"
      return
    }

    self.alertUserLoginErrorLabel.text = ""

    // Firebase Create Account

    FirebaseAuth.Auth.auth().createUser(
      withEmail: email, password: password,
      completion: { authResult, error in
        if let error = error {

          let err = error as NSError
          if let authErrorCode = AuthErrorCode.Code(rawValue: err.code) {

            switch authErrorCode {

            case .invalidEmail, .invalidSender, .invalidRecipientEmail:
              self.alertUserLoginErrorLabel.text = "Please enter a valid email"
              print(
                "\(AuthErrorCode.invalidEmail), \(AuthErrorCode.invalidSender), \(AuthErrorCode.invalidRecipientEmail)"
              )

            case .emailAlreadyInUse:
              self.alertUserLoginErrorLabel.text = "Email already used by another account"
              print("\(AuthErrorCode.emailAlreadyInUse)")

            case .networkError:
              self.alertUserLoginErrorLabel.text = "Network error, please try again"
              print("\(AuthErrorCode.networkError)")

            case .operationNotAllowed:
              self.alertUserLoginErrorLabel.text = "Email/Password not enabled for this App"
              print(
                "\(AuthErrorCode.operationNotAllowed)"
              )

            default:
              print("\(error.localizedDescription)")
            }
          }

          return

        } else {

          if let result = authResult {

            let user = result.user

            print("Created User: \(user)")

            self.navigation!.go(page: "main.page", transition: SCDLatticeTransition.fromRight)
          }

        }

      })

  }
}
