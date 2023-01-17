import ScadeKit

extension SignUpPageAdapter {
  var navigationBar: SCDWidgetsNavigationBar {
    return self.page?.getWidgetByName("navigationBar") as! SCDWidgetsNavigationBar
  }

  var backButton: SCDWidgetsButton {
    return self.page?.getWidgetByName("backButton") as! SCDWidgetsButton
  }

  var createAccountLabel: SCDWidgetsLabel {
    return self.page?.getWidgetByName("createAccountLabel") as! SCDWidgetsLabel
  }

  var UserCredentialInputSection: SCDWidgetsListView {
    return self.page?.getWidgetByName("UserCredentialInputSection") as! SCDWidgetsListView
  }

  var userNameGridView: SCDWidgetsGridView {
    return self.page?.getWidgetByName("userNameGridView") as! SCDWidgetsGridView
  }

  var nameLabel: SCDWidgetsLabel {
    return self.page?.getWidgetByName("nameLabel") as! SCDWidgetsLabel
  }

  var nameTextbox: SCDWidgetsTextbox {
    return self.page?.getWidgetByName("nameTextbox") as! SCDWidgetsTextbox
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

  var SignUpActionsView: SCDWidgetsListView {
    return self.page?.getWidgetByName("SignUpActionsView") as! SCDWidgetsListView
  }

  var signUpButton: SCDWidgetsButton {
    return self.page?.getWidgetByName("signUpButton") as! SCDWidgetsButton
  }

  var orLabel: SCDWidgetsLabel {
    return self.page?.getWidgetByName("orLabel") as! SCDWidgetsLabel
  }

  var signInButton: SCDWidgetsButton {
    return self.page?.getWidgetByName("signInButton") as! SCDWidgetsButton
  }

  var agreementText: SCDWidgetsButton {
    return self.page?.getWidgetByName("agreementText") as! SCDWidgetsButton
  }
}