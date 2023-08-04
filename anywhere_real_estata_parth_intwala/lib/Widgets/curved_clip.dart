import 'package:flutter/material.dart';

//widget
import './top_wave_clipper.dart';
//utilities
import '../Utilities/themes.dart';

class CurvedClip extends StatelessWidget {
  const CurvedClip({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipPath(
          clipper: const TopWaveClipper(),
          child: Container(
            color: Themes.themeColor1,
            height: 300,
          ),
        ),
        ClipPath(
          clipper: const TopWaveClipper(),
          child: Container(
            color: Themes.themeColor2,
            height: 280,
          ),
        ),
      ],
    );
  }
}
