import ScadeKit

extension MainPageAdapter {
  var navigationBar: SCDWidgetsNavigationBar {
    return self.page?.getWidgetByName("navigationBar") as! SCDWidgetsNavigationBar
  }

  var logOutButton: SCDWidgetsButton {
    return self.page?.getWidgetByName("logOutButton") as! SCDWidgetsButton
  }

  var clearButton: SCDWidgetsButton {
    return self.page?.getWidgetByName("clearButton") as! SCDWidgetsButton
  }

  var MovieTypesSection: SCDWidgetsListView {
    return self.page?.getWidgetByName("MovieTypesSection") as! SCDWidgetsListView
  }

  var typeLabel: SCDWidgetsLabel {
    return self.page?.getWidgetByName("typeLabel") as! SCDWidgetsLabel
  }

  var allTypesRow: SCDWidgetsRowView {
    return self.page?.getWidgetByName("allTypesRow") as! SCDWidgetsRowView
  }

  var allTypesLabel: SCDWidgetsLabel {
    return self.page?.getWidgetByName("allTypesLabel") as! SCDWidgetsLabel
  }

  var allTypesCheckButton: SCDWidgetsButton {
    return self.page?.getWidgetByName("allTypesCheckButton") as! SCDWidgetsButton
  }

  var movieTypesLabel: SCDWidgetsLabel {
    return self.page?.getWidgetByName("movieTypesLabel") as! SCDWidgetsLabel
  }

  var tvMiniSeriesLabel: SCDWidgetsLabel {
    return self.page?.getWidgetByName("tvMiniSeriesLabel") as! SCDWidgetsLabel
  }

  var tvSeriesLabel: SCDWidgetsLabel {
    return self.page?.getWidgetByName("tvSeriesLabel") as! SCDWidgetsLabel
  }

  var MovieGenresSection: SCDWidgetsListView {
    return self.page?.getWidgetByName("MovieGenresSection") as! SCDWidgetsListView
  }

  var genresLabel: SCDWidgetsLabel {
    return self.page?.getWidgetByName("genresLabel") as! SCDWidgetsLabel
  }

  var allGenresRow: SCDWidgetsRowView {
    return self.page?.getWidgetByName("allGenresRow") as! SCDWidgetsRowView
  }

  var allGenresLabel: SCDWidgetsLabel {
    return self.page?.getWidgetByName("allGenresLabel") as! SCDWidgetsLabel
  }

  var allGenresCheckButton: SCDWidgetsButton {
    return self.page?.getWidgetByName("allGenresCheckButton") as! SCDWidgetsButton
  }

  var actionGenresLabel: SCDWidgetsLabel {
    return self.page?.getWidgetByName("actionGenresLabel") as! SCDWidgetsLabel
  }

  var adventureGenresLabel: SCDWidgetsLabel {
    return self.page?.getWidgetByName("adventureGenresLabel") as! SCDWidgetsLabel
  }

  var animationLabel: SCDWidgetsLabel {
    return self.page?.getWidgetByName("animationLabel") as! SCDWidgetsLabel
  }

  var ApplyButtonSection: SCDWidgetsListView {
    return self.page?.getWidgetByName("ApplyButtonSection") as! SCDWidgetsListView
  }

  var applyButton: SCDWidgetsButton {
    return self.page?.getWidgetByName("applyButton") as! SCDWidgetsButton
  }
}