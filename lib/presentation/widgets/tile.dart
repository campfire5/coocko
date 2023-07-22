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
    final width = MediaQuery.of(context).size.width;
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomPaint(
            size: Size(width * 0.4, 40),
            painter: TileHeadShapePainter(color: backgroundColor),
          ),
          CustomPaint(
            size: Size(width, 100),
            painter: TileBodyShapePainter(color: backgroundColor),
          ),
        ],
      ),
    );
  }
}

class TileBodyShapePainter extends CustomPainter {
  const TileBodyShapePainter({
    required this.color,
  });

  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    const radius = 20.0;

    canvas.drawRRect(
      RRect.fromRectAndCorners(
        Rect.fromLTWH(0, 0, size.width, size.height),
        topRight: Radius.circular(radius),
        bottomLeft: Radius.circular(radius),
        bottomRight: Radius.circular(radius),
      ),
      paint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class TileHeadShapePainter extends CustomPainter {
  const TileHeadShapePainter({
    required this.color,
  });

  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    const arcDimension = 40.0;
    const tiltValue = 8.0;

    final path = Path()
      ..moveTo(0, 0)
      ..lineTo(
        size.width - arcDimension,
        0,
      )
      ..quadraticBezierTo(
        size.width - arcDimension / 2 - tiltValue,
        0,
        size.width - arcDimension / 2,
        size.height / 2,
      )
      ..quadraticBezierTo(
        size.width - arcDimension / 2 + tiltValue,
        arcDimension,
        size.width,
        size.height,
      )
      ..lineTo(
        size.width,
        size.height,
      )
      ..lineTo(
        0,
        size.height,
      )
      ..quadraticBezierTo(
        0,
        0,
        arcDimension / 2,
        0,
      )
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
