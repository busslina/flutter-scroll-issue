import 'package:flutter/material.dart';

extension WidgetExtension on Widget {
  Widget roundedOpt1() => ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: this,
      );

  Widget roundedOpt2() => Container(
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
        ),
        child: this,
      );
}
