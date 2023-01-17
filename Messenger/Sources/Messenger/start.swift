import Firebase
import ScadeKit

class Messenger: SCDApplication {

  let window = SCDLatticeWindow()
  let mainAdapter = MainPageAdapter()
  let loginPage = LoginPageAdapter()
  let signUpPage = SignUpPageAdapter()

  override func onFinishLaunching() {

    mainAdapter.load("main.page")
    loginPage.load("login.page")
    signUpPage.load("signUp.page")
    loginPage.show(view: window)

    FirebaseApp.configure()
  }
}
