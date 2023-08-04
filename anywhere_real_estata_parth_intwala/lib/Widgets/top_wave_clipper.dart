import 'package:flutter/cupertino.dart';

class TopWaveClipper extends CustomClipper<Path> {
  const TopWaveClipper();

  @override
  Path getClip(Size size) {
    debugPrint(size.width.toString());

    Path path = Path();
    path.lineTo(0, size.height - 100);
    Offset firstCurveStart = Offset(size.width / 4, size.height - 100);
    Offset firstCurveEnd = Offset(size.width / 2, size.height - 50);
    path.quadraticBezierTo(firstCurveStart.dx, firstCurveStart.dy,
        firstCurveEnd.dx, firstCurveEnd.dy);

    Offset secondCurveStart = Offset(size.width * 3 / 4, size.height);
    Offset secondCurveEnd = Offset(size.width, size.height);
    path.quadraticBezierTo(secondCurveStart.dx, secondCurveStart.dy,
        secondCurveEnd.dx, secondCurveEnd.dy);
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    throw UnimplementedError();
  }
}
