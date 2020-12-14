import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tuto_app/screens/form_screen.dart';
import 'package:tuto_app/utils/constants.dart';



class CustomBottomNavigationBar extends StatefulWidget {
  final List<Widget> screens;
  final int currentTab;
  final Widget currentScreen;
  final Function tabChange;
  CustomBottomNavigationBar({this.screens, this.currentTab, this.currentScreen, this.tabChange});

  @override
  _CustomBottomNavigationBarState createState() => _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int currentTab;
  Widget currentScreen;
  List<Widget> screens;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    currentTab = widget.currentTab;
    currentScreen = widget.currentScreen;
    screens = widget.screens;
  }
  @override
  Widget build(BuildContext context) {

    final Size size = MediaQuery.of(context).size;
    return Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            child: Container(
              width: size.width,
              height: 80,
              child: Stack(
                overflow: Overflow.visible,
                children: [
                  CustomPaint(
                    size: Size(size.width, 80),
                    painter: BNBCustomPainter(),
                  ),
                  Center(
                    heightFactor: 0.6,
                    child: FloatingActionButton(
                        backgroundColor: kSecondaryColor,
                        child: Icon(Icons.add, color: Colors.white,),
                        elevation: 0.1,
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (BuildContext context) {
                            return FormScreen();
                          }));
                        }),
                  ),
                  Container(
                    width: size.width,
                    height: 80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Flexible(
                          child: widget.tabChange(Icons.dashboard, '', 0),
                        ),
                        Flexible(
                          child: widget.tabChange(Icons.person_add, '', 1),
                        ),


                        Container(
                          width: size.width * 0.20,
                        ),
                        Flexible(
                            child: widget.tabChange(Icons.person, '', 2),
                        ),
                        Flexible(
                            child: widget.tabChange(Icons.settings, '', 3),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
    );
  }
}












class BNBCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = new Paint()
      ..color = kPrimaryColor.withOpacity(.7)
      ..style = PaintingStyle.fill;

    Path path = Path();
    path.moveTo(0, 20); // Start
    path.quadraticBezierTo(size.width * 0.20, 0, size.width * 0.35, 0);
    path.quadraticBezierTo(size.width * 0.40, 0, size.width * 0.40, 20);
    path.arcToPoint(Offset(size.width * 0.60, 20), radius: Radius.circular(20.0), clockwise: false);
    path.quadraticBezierTo(size.width * 0.60, 0, size.width * 0.65, 0);
    path.quadraticBezierTo(size.width * 0.80, 0, size.width, 20);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, 20);
    canvas.drawShadow(path, Colors.black, 5, true);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}