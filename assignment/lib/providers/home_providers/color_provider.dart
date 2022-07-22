import 'package:flutter/foundation.dart';

class ColorProvider extends ChangeNotifier {
  /// [_colorindex] denotes the index of selected index
  /// which is set to 0 as default i.e red color
  int _colorIndex = 0;

  // Getter for selected color
  int get colorIndex => _colorIndex;

  /// [toggleColor] toggles the color index
  void toggleColor() {
    switch (_colorIndex) {
      case 0:
        {
          _colorIndex = 1;
          break;
        }
      case 1:
        {
          _colorIndex = 2;
          break;
        }
      case 2:
        {
          _colorIndex = 0;
          break;
        }
    }
    notifyListeners();
  }
}
