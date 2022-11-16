import 'package:flutter/material.dart';

class TextComponent extends StatefulWidget {
  final String? text;
  final String? type;
  final Color? color;

  TextComponent({required this.text, this.type, this.color});

  @override
  State<TextComponent> createState() => _TextComponentState();
}

class _TextComponentState extends State<TextComponent> {
  @override
  Widget build(BuildContext context) {
    if (this.widget.type == "title") {
      return Text(
        this.widget.text.toString(),
        style: TextStyle(
            color: widget.color, fontSize: 30.0, fontWeight: FontWeight.w700),
      );
    }
    if (this.widget.type == "subTitle") {
      return Text(
        this.widget.text.toString(),
        style: TextStyle(
            color: widget.color, fontSize: 20.0, fontWeight: FontWeight.w500),
      );
    } else {
      return Text(
        this.widget.text.toString(),
        style: TextStyle(
            color: widget.color, fontSize: 18.0, fontWeight: FontWeight.w300),
      );
    }
  }
}
