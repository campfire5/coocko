import 'package:flutter/material.dart';

class CoockoTile extends StatelessWidget {
  final Color backgroundColor;
  final Color foregroundColor;
  const CoockoTile({
    super.key,
    this.backgroundColor = Colors.black,
    this.foregroundColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: const Size(150, 45),
      painter: CustomShapePainter(color: backgroundColor),
    );
  }
}

class CustomShapePainter extends CustomPainter {
  const CustomShapePainter({
    required this.color,
  });

  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    final arcDimension = size.height / 3;

    final path = Path()
      ..moveTo(0, 0)
      ..lineTo(
        size.width,
        0,
      )
      ..lineTo(
        size.width,
        size.height,
      )
      ..quadraticBezierTo(size.width, size.height - arcDimension,
          size.width - arcDimension, size.height - arcDimension)
      ..lineTo(2 * arcDimension, size.height - arcDimension)
      ..quadraticBezierTo(arcDimension + 3, 30, arcDimension, arcDimension)
      ..quadraticBezierTo(arcDimension - 3, 0, 0, 0)
      ..lineTo(
        0,
        0,
      );

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
