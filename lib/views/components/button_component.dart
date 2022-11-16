import 'package:flutter/material.dart';
import 'package:send_money_ui/commons/palettes.dart';
import 'package:send_money_ui/views/components/text_component.dart';

class ButtonComponent extends StatefulWidget {
  final Function()? onTap;
  final String? type;
  final String? title;

  ButtonComponent({this.title, this.type, this.onTap});

  @override
  State<ButtonComponent> createState() => _ButtonComponentState();
}

class _ButtonComponentState extends State<ButtonComponent> {
  @override
  Widget build(BuildContext context) {
    if (this.widget.type == "primary") {
      return InkWell(
          onTap: this.widget.onTap,
          child: Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(vertical: 15.0),
            decoration: BoxDecoration(
                color: Palettes.secondary,
                borderRadius: BorderRadius.circular(10)),
            child: Center(
              child: TextComponent(
                text: this.widget.title,
                color: Colors.white,
              ),
            ),
          ));
    } else {
      return InkWell(
          onTap: this.widget.onTap,
          child: Container(
            margin: EdgeInsets.only(top: 10),
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(vertical: 15.0),
            decoration: BoxDecoration(
                border: Border.all(color: Palettes.primary),
                borderRadius: BorderRadius.circular(10)),
            child: Center(
              child: TextComponent(
                text: this.widget.title,
                color: Colors.black,
              ),
            ),
          ));
    }
  }
}
