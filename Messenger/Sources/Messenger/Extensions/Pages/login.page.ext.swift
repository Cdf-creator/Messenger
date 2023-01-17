import ScadeKit

extension LoginPageAdapter {
  var navigationBar: SCDWidgetsNavigationBar {
    return self.page?.getWidgetByName("navigationBar") as! SCDWidgetsNavigationBar
  }

  var backButton: SCDWidgetsButton {
    return self.page?.getWidgetByName("backButton") as! SCDWidgetsButton
  }

  var signInLabel: SCDWidgetsLabel {
    return self.page?.getWidgetByName("signInLabel") as! SCDWidgetsLabel
  }

  var UserCredentialInputSection: SCDWidgetsListView {
    return self.page?.getWidgetByName("UserCredentialInputSection") as! SCDWidgetsListView
  }

  var userEmailGridView: SCDWidgetsGridView {
    return self.page?.getWidgetByName("userEmailGridView") as! SCDWidgetsGridView
  }

  var emailLabel: SCDWidgetsLabel {
    return self.page?.getWidgetByName("emailLabel") as! SCDWidgetsLabel
  }

  var emailTextbox: SCDWidgetsTextbox {
    return self.page?.getWidgetByName("emailTextbox") as! SCDWidgetsTextbox
  }

  var userPasswordGridView: SCDWidgetsGridView {
    return self.page?.getWidgetByName("userPasswordGridView") as! SCDWidgetsGridView
  }

  var passwordLabel: SCDWidgetsLabel {
    return self.page?.getWidgetByName("passwordLabel") as! SCDWidgetsLabel
  }

  var passwordTextbox: SCDWidgetsTextbox {
    return self.page?.getWidgetByName("passwordTextbox") as! SCDWidgetsTextbox
  }

  var alertUserLoginErrorLabel: SCDWidgetsLabel {
    return self.page?.getWidgetByName("alertUserLoginErrorLabel") as! SCDWidgetsLabel
  }

  var forgotPasswordButton: SCDWidgetsButton {
    return self.page?.getWidgetByName("forgotPasswordButton") as! SCDWidgetsButton
  }

  var LoginActionsView: SCDWidgetsListView {
    return self.page?.getWidgetByName("LoginActionsView") as! SCDWidgetsListView
  }

  var signInButton: SCDWidgetsButton {
    return self.page?.getWidgetByName("signInButton") as! SCDWidgetsButton
  }

  var newToTheAppLabel: SCDWidgetsLabel {
    return self.page?.getWidgetByName("newToTheAppLabel") as! SCDWidgetsLabel
  }

  var createAccountButton: SCDWidgetsButton {
    return self.page?.getWidgetByName("createAccountButton") as! SCDWidgetsButton
  }

  var agreementText: SCDWidgetsButton {
    return self.page?.getWidgetByName("agreementText") as! SCDWidgetsButton
  }
}