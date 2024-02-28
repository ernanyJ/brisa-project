import 'package:flutter/material.dart';

class ResponsiveWidget extends StatelessWidget {
  final Widget FHD;
  final Widget HD;

  const ResponsiveWidget({super.key, required this.FHD, required this.HD});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 1500) {
        return FHD;
      } else {
        return HD;
      }
    });
  }
}
