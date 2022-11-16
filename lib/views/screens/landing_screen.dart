import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:send_money_ui/views/components/button_component.dart';
import 'package:send_money_ui/views/components/text_component.dart';
import 'package:send_money_ui/views/screens/home_screen.dart';

import '../../commons/helpers.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Image.asset("assets/imgs/cards.png"),
            SizedBox(
              height: 60,
            ),
            TextComponent(
              text: "Keeping track of all your finances",
              type: "title",
              centered: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            TextComponent(
                centered: TextAlign.center,
                text:
                    "We take every precaution to ensure the safety of your money."),
            SizedBox(
              height: 50,
            ),
            Row(
              children: [
                Expanded(
                    child: Container(
                  child: ButtonComponent(
                    onTap: () {
                      Navs.push(context, HomeScreen(), replace: true);
                    },
                    title: "Continue",
                    type: "primary",
                  ),
                )),
                Expanded(
                    child: ButtonComponent(
                  title: "Skip",
                )),
              ],
            )
          ],
        ),
      )),
    );
  }
}
