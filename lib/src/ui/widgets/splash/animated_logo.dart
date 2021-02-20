import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AnimatedLogo extends StatefulWidget {
  final Color color;
  final double size;

  const AnimatedLogo({
    Key key,
    this.color = Colors.white,
    this.size = 32.0,
  }) : super(key: key);

  @override
  _AnimatedLogoState createState() => _AnimatedLogoState();
}

class _AnimatedLogoState extends State<AnimatedLogo> {
  bool _visible = false;

  @override
  void initState() {
    super.initState();
    _onInit();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      duration: Duration(milliseconds: 600),
      opacity: _visible ? 1.0 : 0.0,
      child: SvgPicture.asset(
        'assets/images/logo.svg',
        color: widget.color,
        fit: BoxFit.fitHeight,
        height: widget.size,
      ),
    );
  }

  void _onInit() {
    Future.delayed(Duration(milliseconds: 100), () {
      setState(() {
        _visible = true;
      });
    });
  }
}
