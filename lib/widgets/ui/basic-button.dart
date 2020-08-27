import 'package:flutter/material.dart';

class BasicButton extends StatefulWidget {
  final double width;
  final void Function() tap;
  final void Function() longPress;

  const BasicButton(
      {Key key,
      @required this.width,
      @required this.tap,
      @required this.longPress})
      : super(key: key);

  @override
  _BasicButtonState createState() => new _BasicButtonState();
}

class _BasicButtonState extends State<BasicButton> {
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.width,
      decoration: BoxDecoration(
        color: Colors.green,
      ),
      child: GestureDetector(
        onTap: widget.tap,
        onLongPress: widget.longPress,
      ),
    );
  }
}
