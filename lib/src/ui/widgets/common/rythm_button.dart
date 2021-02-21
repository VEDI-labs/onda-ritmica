import 'package:flutter/material.dart';
import 'package:onda_ritmica/src/ui/theme/color.dart';

enum ButtonColor {
  Blue,
  Green,
  LightGreen,
  Orange,
  Yellow,
}

class RythmButton extends StatelessWidget {
  final ButtonColor color;
  final String text;
  final VoidCallback onPressed;
  final bool isOutlined;

  const RythmButton({
    @required this.text,
    Key key,
    this.color = ButtonColor.Blue,
    this.isOutlined = false,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(
        text.toUpperCase(),
        style: Theme.of(context).textTheme.button.copyWith(
              color: isOutlined ? buttonColor : Colors.white,
            ),
      ),
      color: isOutlined ? Colors.white : buttonColor,
      elevation: 4.0,
      onPressed: onPressed,
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      shape: StadiumBorder(
        side: BorderSide(
          color: isOutlined ? buttonColor : Colors.white,
          width: 1.2,
        ),
      ),
    );
  }

  Color get buttonColor {
    switch (color) {
      case ButtonColor.Green:
        return secondary;
      default:
        return primary;
    }
  }
}
