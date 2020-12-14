import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tuto_app/models/item.dart';
import 'package:tuto_app/screens/dashborad_screen.dart';
import 'package:tuto_app/screens/form_screen.dart';
import 'package:tuto_app/screens/profile_screen.dart';
import 'package:tuto_app/screens/request_screen.dart';
import 'package:tuto_app/screens/settings_screen.dart';
import 'package:tuto_app/utils/constants.dart';
import 'package:tuto_app/widgets/custom_app_bar.dart';
import 'package:tuto_app/widgets/custom_bottom_navigation.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final snackBar = SnackBar(content: Text('Yay! A SnackBar!'));
  final List<Widget> screens = [
    DashboardScreen(),
    RequestScreen(),
    ProfileScreen(),
    SettingScreen()
  ];
  int currentTab = 0;
  Widget currentScreen = DashboardScreen();
  final PageStorageBucket bucket = PageStorageBucket();
  Widget tabButton(IconData icon, String text, int index) {
    return MaterialButton(
      minWidth: 40,
      onPressed: () {

        setState(() {
          currentTab = index;
          currentScreen = screens[currentTab];
          print(currentTab);
        });
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            icon,
            color: currentTab == index ? kSecondaryColor : Colors.white,
          ),
          Text(
            '$text',
            style: currentTab == index ? kSimpleSecondaryText : kSimpleWhiteText,
          ),
        ],
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Home',
        leading: true,
      ),

      body: Stack(
        children: [
          PageStorage(
            child: currentScreen,
            bucket: bucket,
          ),
          CustomBottomNavigationBar(currentTab: currentTab,
              currentScreen: currentScreen, screens: screens, tabChange: tabButton)
        ],
      )
    );
  }
}

// BottomAppBar(
// shape: CircularNotchedRectangle(),
// notchMargin: 10,
// child: Container(
// height: 60,
// child: Row(
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
// children: [
// Row(
// crossAxisAlignment: CrossAxisAlignment.start,
//
// children: [
// tabButton(Icons.dashboard, 'Board', 0),
// tabButton(Icons.person_add, 'Requests', 1),
//
// ],
// ),
// Container(
// width: size.width *0.2,
// ),
//
// Row(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// tabButton(Icons.person, 'Profile', 2),
// tabButton(Icons.settings, 'Settings', 3),
// ],
// ),
// ]),
// ),
// ),
