import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Logo extends StatelessWidget {
  final Color color;
  final double size;

  const Logo({
    Key key,
    this.color = Colors.white,
    this.size = 32.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'rythm-logo',
      child: SvgPicture.asset(
        'assets/images/logo.svg',
        color: color,
        fit: BoxFit.fitHeight,
        height: size,
      ),
    );
  }
}
