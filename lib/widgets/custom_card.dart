import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tuto_app/screens/detail_screen.dart';
import 'package:tuto_app/utils/constants.dart';

class CustomCard extends StatefulWidget {
  final String title;
  final IconData icon;
  final int index;

  const CustomCard({this.title, this.icon, this.index});

  @override
  _CustomCardState createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (BuildContext context) {
          return DetailScreen(index: widget.index);
        }));
      },
      child: AnimatedContainer(
        duration: Duration(seconds: 1),
        curve: Curves.easeIn,
        margin: EdgeInsets.all(10.0),
        width: MediaQuery.of(context).orientation == Orientation.portrait
            ? MediaQuery.of(context).size.width * 0.4
            : MediaQuery.of(context).size.width * 0.2,
        height: MediaQuery.of(context).orientation == Orientation.portrait
            ? MediaQuery.of(context).size.height * 0.2
            : MediaQuery.of(context).size.height * 0.4,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.0),
          boxShadow: kBoxShadow
        ),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  child: Icon(widget.icon,
                      size: MediaQuery.of(context).orientation ==
                              Orientation.portrait
                          ? MediaQuery.of(context).size.width * .2
                          : MediaQuery.of(context).size.height * .2,
                      color: Theme.of(context).accentColor),
                ),
                Text(
                  widget.title,
                  style: GoogleFonts.alegreyaSans(
                    fontSize: MediaQuery.of(context).orientation ==
                            Orientation.portrait
                        ? MediaQuery.of(context).size.width * .07
                        : MediaQuery.of(context).size.height * .07,
                    fontWeight: FontWeight.w700,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
