import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

extension ContextX on BuildContext {
  ColorScheme get colors => Theme.of(this).colorScheme;
}
