import 'package:flutter/material.dart';

class TextComponent extends StatefulWidget {
  final String? text;
  final String? type;
  final Color? color;
  final TextAlign? centered;

  TextComponent({required this.text, this.type, this.color, this.centered});

  @override
  State<TextComponent> createState() => _TextComponentState();
}

class _TextComponentState extends State<TextComponent> {
  @override
  Widget build(BuildContext context) {
    if (this.widget.type == "title") {
      return Text(
        this.widget.text.toString(),
        textAlign: this.widget.centered,
        style: TextStyle(
            color: this.widget.color,
            fontSize: 30.0,
            fontWeight: FontWeight.w800),
      );
    }
    if (this.widget.type == "subTitle") {
      return Text(
        this.widget.text.toString(),
        textAlign: this.widget.centered,
        style: TextStyle(
            color: widget.color, fontSize: 19.0, fontWeight: FontWeight.bold),
      );
    } else {
      return Text(
        textAlign: this.widget.centered,
        this.widget.text.toString(),
        style: TextStyle(
            color: widget.color, fontSize: 16.0, fontWeight: FontWeight.w700),
      );
    }
  }
}
