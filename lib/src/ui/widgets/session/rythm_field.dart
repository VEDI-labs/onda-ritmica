import 'package:flutter/material.dart';

class RythmField extends StatefulWidget {
  final String hint;
  final String label;
  final bool isPassword;

  const RythmField({
    Key key,
    this.hint,
    this.isPassword = false,
    this.label,
  }) : super(key: key);

  @override
  _RythmFieldState createState() => _RythmFieldState();
}

class _RythmFieldState extends State<RythmField> {
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        hintText: widget.hint,
        labelText: widget.label,
        suffix: widget.isPassword
            ? InkWell(
                child: Icon(
                  _isObscure ? Icons.visibility : Icons.visibility_off,
                ),
                onTap: _toggleVisibility,
              )
            : null,
      ),
      obscureText: widget.isPassword ? _isObscure : false,
    );
  }

  void _toggleVisibility() {
    setState(() {
      _isObscure = !_isObscure;
    });
  }
}
