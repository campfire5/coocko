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
    return Container(
      color: Colors.red,
      child: CustomPaint(
        size: const Size(400, 80),
        painter: TileHeadShapePainter(color: backgroundColor),
      ),
    );
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

    const arcDimension = 80.0;
    const tiltValue = 10;

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
        80,
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

// class CustomShapePainter extends CustomPainter {
//   const CustomShapePainter({
//     required this.color,
//   });

//   final Color color;

//   @override
//   void paint(Canvas canvas, Size size) {
//     final paint = Paint()
//       ..color = color
//       ..style = PaintingStyle.fill;

//     final arcDimension = size.height / 3;

//     final path = Path()
//       ..moveTo(0, 0)
//       ..lineTo(
//         size.width,
//         0,
//       )
//       ..lineTo(
//         size.width,
//         size.height,
//       )
//       ..quadraticBezierTo(size.width, size.height - arcDimension,
//           size.width - arcDimension, size.height - arcDimension)
//       ..lineTo(2 * arcDimension, size.height - arcDimension)
//       ..quadraticBezierTo(arcDimension + 3, 30, arcDimension, arcDimension)
//       ..quadraticBezierTo(arcDimension - 3, 0, 0, 0)
//       ..lineTo(
//         0,
//         0,
//       );

//     canvas.drawPath(path, paint);
//   }

//   @override
//   bool shouldRepaint(CustomPainter oldDelegate) {
//     return true;
//   }
// }
