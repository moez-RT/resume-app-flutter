import 'package:flutter/material.dart';
import 'package:tuto_app/screens/home_screen.dart';
import 'package:tuto_app/utils/constants.dart';
import 'package:tuto_app/screens/qr_code_scan_screen.dart';

void main() {
  runApp(Main());
}

class Main extends StatefulWidget {

  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        accentColor: kSecondaryColor
      ),
      home: HomeScreen()
      // home: QRViewExample()
    );
  }
}




