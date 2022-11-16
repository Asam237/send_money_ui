import 'package:flutter/material.dart';
import 'package:send_money_ui/commons/palettes.dart';
import 'package:send_money_ui/views/components/button_component.dart';
import 'package:send_money_ui/views/components/text_component.dart';
import 'package:send_money_ui/views/screens/landing_screen.dart';

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
      theme: ThemeData(fontFamily: 'Nimbus'),
      home: const LandingScreen(),
    );
  }
}
