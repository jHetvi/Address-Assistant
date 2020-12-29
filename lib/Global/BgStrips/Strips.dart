import 'package:flutter/material.dart';
import 'package:santa_assistant/Global/Colors/Colors.dart';

class PathPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = stripColor()
      ..style = PaintingStyle.fill
      ..strokeWidth = 8.0;

    // path_8
    double path_8_xs = size.width / 414;
    double path_8_ys = size.height / 736;

    Path path_8 = Path()
      ..moveTo(122.63 * path_8_xs, 597.76 * path_8_ys)
      ..cubicTo(220.92 * path_8_xs, 529.47 * path_8_ys, 367.91 * path_8_xs,
          491.18 * path_8_ys, 403.84 * path_8_xs, 361.77 * path_8_ys)
      ..cubicTo(424.76 * path_8_xs, 286.45 * path_8_ys, 412.48 * path_8_xs,
          202.28 * path_8_ys, 379.65 * path_8_xs, 133.99 * path_8_ys)
      ..cubicTo(352.03 * path_8_xs, 76.54 * path_8_ys, 327.59 * path_8_xs,
          41.94 * path_8_ys, 294.68 * path_8_xs, 0 * path_8_ys)
      ..lineTo(156.38 * path_8_xs, 0 * path_8_ys)
      ..cubicTo(179.32 * path_8_xs, 26.34 * path_8_ys, 202.88 * path_8_xs,
          52.16 * path_8_ys, 225.5 * path_8_xs, 78.78 * path_8_ys)
      ..cubicTo(260.79 * path_8_xs, 120.31 * path_8_ys, 293 * path_8_xs,
          164.69 * path_8_ys, 320.74 * path_8_xs, 211.66 * path_8_ys)
      ..cubicTo(338.86 * path_8_xs, 242.35 * path_8_ys, 354.32 * path_8_xs,
          275.94 * path_8_ys, 357.18 * path_8_xs, 311.92 * path_8_ys)
      ..cubicTo(359.71 * path_8_xs, 343.7 * path_8_ys, 352.72 * path_8_xs,
          375.3 * path_8_ys, 336.43 * path_8_xs, 402.77 * path_8_ys)
      ..cubicTo(304.94 * path_8_xs, 455.9 * path_8_ys, 250.21 * path_8_xs,
          489.37 * path_8_ys, 198.02 * path_8_xs, 519.33 * path_8_ys)
      ..cubicTo(144.8 * path_8_xs, 549.88 * path_8_ys, 90.06 * path_8_xs,
          579.45 * path_8_ys, 43.05 * path_8_xs, 619.33 * path_8_ys)
      ..cubicTo(27.35 * path_8_xs, 632.65 * path_8_ys, 12.88 * path_8_xs,
          647.11 * path_8_ys, 0 * path_8_xs, 662.68 * path_8_ys)
      ..lineTo(0 * path_8_xs, 719.23 * path_8_ys)
      ..cubicTo(32.13 * path_8_xs, 671.68 * path_8_ys, 74.99 * path_8_xs,
          630.87 * path_8_ys, 122.63 * path_8_xs, 597.76 * path_8_ys)
      ..close();

    canvas.drawPath(path_8, paint);

    // path_9
    double path_9_xs = size.width / 414;
    double path_9_ys = size.height / 736;

    Path path_9 = Path()
      ..moveTo(161.35 * path_9_xs, 302.52 * path_9_ys)
      ..cubicTo(185.53 * path_9_xs, 240.31 * path_9_ys, 223.5 * path_9_xs,
          185.68 * path_9_ys, 274.87 * path_9_xs, 149.48 * path_9_ys)
      ..cubicTo(305.29 * path_9_xs, 128.05 * path_9_ys, 339.31 * path_9_xs,
          111.24 * path_9_ys, 364.06 * path_9_xs, 81.05 * path_9_ys)
      ..cubicTo(368.76 * path_9_xs, 75.3 * path_9_ys, 372.73 * path_9_xs,
          68.9 * path_9_ys, 376.41 * path_9_xs, 62.23 * path_9_ys)
      ..lineTo(376.41 * path_9_xs, 0 * path_9_ys)
      ..cubicTo(360.12 * path_9_xs, 36.49 * path_9_ys, 334.69 * path_9_xs,
          66.96 * path_9_ys, 304.98 * path_9_xs, 91.77 * path_9_ys)
      ..cubicTo(283.49 * path_9_xs, 109.71 * path_9_ys, 260.48 * path_9_xs,
          125.12 * path_9_ys, 237.1 * path_9_xs, 139.65 * path_9_ys)
      ..cubicTo(213.13 * path_9_xs, 154.54 * path_9_ys, 189.22 * path_9_xs,
          168.84 * path_9_ys, 167.28 * path_9_xs, 187.46 * path_9_ys)
      ..cubicTo(83.96 * path_9_xs, 258.24 * path_9_ys, 23.37 * path_9_xs,
          365.9 * path_9_ys, 0 * path_9_xs, 481.63 * path_9_ys)
      ..cubicTo(4.02 * path_9_xs, 482.79 * path_9_ys, 8.21 * path_9_xs,
          483.47 * path_9_ys, 12.56 * path_9_xs, 483.47 * path_9_ys)
      ..lineTo(122.35 * path_9_xs, 483.47 * path_9_ys)
      ..cubicTo(127.88 * path_9_xs, 421.18 * path_9_ys, 139.13 * path_9_xs,
          359.69 * path_9_ys, 161.35 * path_9_xs, 302.52 * path_9_ys)
      ..close();

    path_9 = path_9.shift(Offset(38.34 * path_9_xs, 388.56 * path_9_ys));

    canvas.drawPath(path_9, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
