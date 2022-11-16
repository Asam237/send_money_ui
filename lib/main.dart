import 'package:flutter/material.dart';
import 'package:send_money_ui/views/components/button_component.dart';
import 'package:send_money_ui/views/components/text_component.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Send Money UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LandingScreen(),
    );
  }
}

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
          child: Column(
        children: [
          Image.asset("assets/imgs/cards.png"),
          TextComponent(
            text: "Hello Title",
            type: "title",
          ),
          TextComponent(
            text: "Hello Sub Title",
            type: "subTitle",
          ),
          TextComponent(
            text: "Hello default",
          ),
          Container(
            width: 200,
            child: ButtonComponent(
              type: "primary",
              title: "Continue",
            ),
          ),
          Container(
            width: 200,
            child: ButtonComponent(
              title: "Continue",
            ),
          )
        ],
      )),
    );
  }
}
