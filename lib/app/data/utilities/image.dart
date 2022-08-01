import 'dart:core';

class AppImage {
  factory AppImage() => _instance;

  AppImage._internal();
  static final AppImage _instance = AppImage._internal();
}
