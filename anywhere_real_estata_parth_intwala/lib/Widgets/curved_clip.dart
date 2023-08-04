import 'package:flutter/material.dart';

//widget
import './top_wave_clipper.dart';
//utilities
import '../Utilities/themes.dart';

class CurvedClip extends StatelessWidget {
  final double height;
  const CurvedClip({required this.height, super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipPath(
          clipper: const TopWaveClipper(),
          child: Container(
            color: Themes.themeColor1,
            height: height,
          ),
        ),
        ClipPath(
          clipper: const TopWaveClipper(),
          child: Container(
            color: Themes.themeColor2,
            height: height - 20,
          ),
        ),
      ],
    );
  }
}
