import 'package:flutter/material.dart';
import 'package:notes/theme/theme.dart';

class ThemeProvider with ChangeNotifier {
  // initially theme is light mode
  ThemeData _themeData = lightMode;

  // getter method to access theme from other parts of code
  ThemeData get themeData => _themeData;

  //getter method to see if we are in dark mode
  bool get isDarkMode => _themeData == darkMode;

  //setter method to set new theme
  set themeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }

  // will use this toggle in switch later on
  void toggleTheme(){
    if (_themeData == lightMode){
      themeData == darkMode;

    } else {
      themeData == lightMode;
    }
  }
  
}