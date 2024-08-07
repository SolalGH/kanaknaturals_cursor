import 'package:flutter/material.dart';

class MyActiveProvider extends ChangeNotifier {
  // Default value
  Offset? _cursorPos;
  int? _activeItem;

  // Getter
  Offset? get cursorPos => _cursorPos;
  int? get activeItem => _activeItem;

  // Updater
  void setCursorPos(Offset newPos) {
    _cursorPos = newPos;
    notifyListeners();
  }

  void setActiveItem(int? newValue) {
    _activeItem = newValue;
    notifyListeners();
  }
}
