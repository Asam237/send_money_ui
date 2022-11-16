import 'package:flutter/material.dart';

class Navs {
  static pop(BuildContext context) {
    NavigatorState nav = Navigator.of(context);
    if (!nav.canPop()) return;
    nav.canPop();
  }

  static push(BuildContext context, Widget page, {replace: true}) {
    NavigatorState nav = Navigator.of(context);
    MaterialPageRoute route =
        MaterialPageRoute(builder: (BuildContext context) => page);
    replace ? nav.pushReplacement(route) : nav.push(route);
  }
}
