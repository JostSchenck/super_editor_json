import 'package:flutter/material.dart';
import 'package:super_editor/super_editor.dart';

extension ColorAttributionExt on TextStyle {
  TextStyle mergeColorAttribution(Attribution attribution) {
    if (attribution is ColorAttribution) {
      return copyWith(
        color: attribution.color,
      );
    }
    return this;
  }
}
