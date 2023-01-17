import FirebaseAuth
import ScadeKit

class LoginPageAdapter: SCDLatticePageAdapter {

  // page adapter initialization
  override func load(_ path: String) {
    super.load(path)

    self.createAccountButton.onClick { _ in
      self.navigation!.go(page: "signUp.page", transition: SCDLatticeTransition.fromLeft)

    }

    self.signInButton.onClick { _ in self.loginButtonTapped()

    }

    self.passwordTextbox.keyboardType = .number

  }

  private func loginButtonTapped() {

    let email = emailTextbox.text
    let password = passwordTextbox.text

    guard !email.isEmpty, !password.isEmpty, password.count >= 8
    else {
      self.alertUserLoginErrorLabel.text =
        "Please enter all information to sign in"
      return
    }

    self.alertUserLoginErrorLabel.text = ""

    // Firebase Sign In

    FirebaseAuth.Auth.auth().signIn(
      withEmail: email, password: password,
      completion: { authResult, error in
        if let error = error {

          let err = error as NSError
          if let authErrorCode = AuthErrorCode.Code(rawValue: err.code) {

            switch authErrorCode {

            case .invalidEmail, .invalidSender, .invalidRecipientEmail:
              self.alertUserLoginErrorLabel.text = "Please enter a valid email"
              print("\(AuthErrorCode.invalidEmail)")

            case .wrongPassword:
              self.alertUserLoginErrorLabel.text = "Your password is incorrect"
              print("\(AuthErrorCode.wrongPassword)")

            case .userNotFound:
              self.alertUserLoginErrorLabel.text = "Account doesn't exist"
              print("\(AuthErrorCode.userNotFound)")

            case .userDisabled:
              self.alertUserLoginErrorLabel.text = "Your account has been disabled"
              print("\(AuthErrorCode.userDisabled)")

            case .networkError:
              self.alertUserLoginErrorLabel.text = "Network error, please try again"
              print("Network Error, \(AuthErrorCode.wrongPassword)")

            case .operationNotAllowed:
              self.alertUserLoginErrorLabel.text = "Email/Password not enabled for this App"
              print("\(AuthErrorCode.operationNotAllowed)")

            default:
              print("x\(error.localizedDescription)")
            }
          }

          return
        }

        print("User signs in successfully")

        self.navigation!.go(page: "main.page", transition: SCDLatticeTransition.fromRight)

      })

  }

}
