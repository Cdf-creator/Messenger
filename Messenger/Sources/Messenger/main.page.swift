import FirebaseAuth
import ScadeKit

class MainPageAdapter: SCDLatticePageAdapter {

  // page adapter initialization
  override func load(_ path: String) {
    super.load(path)

    self.logOutButton.onClick { _ in

      self.logOutButtonTapped()

    }

  }

  private func logOutButtonTapped() {

    if FirebaseAuth.Auth.auth().currentUser != nil {

      do {

        try Auth.auth().signOut()

        print("Signed Out")

        self.navigation!.go(page: "login.page", transition: SCDLatticeTransition.fromRight)
      } catch let logoutError { print("Error signing out", logoutError) }

    }

  }

}
