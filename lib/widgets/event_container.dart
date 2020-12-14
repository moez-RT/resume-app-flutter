import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EventContainer extends StatelessWidget {
  final Color color;
  final Color textColor;
  final Color durationColor;
  final String title;
  final String duration;

  const EventContainer({this.color, this.textColor, this.durationColor, this.title, this.duration});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 25.0,
        ),
        Container(
          margin: EdgeInsets.all(5.0),
          padding: EdgeInsets.all(5.0),
          decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(20.0),
              boxShadow: [
                BoxShadow(
                    blurRadius: 3.0, spreadRadius: 2.0, color: Colors.white70)
              ]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Text(
                      duration,
                      style: GoogleFonts.alegreyaSans(
                          color: durationColor,
                          fontWeight: FontWeight.w700,
                          fontSize: 25.0),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Text(
                      title,
                      style: GoogleFonts.alegreyaSans(
                          color: textColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 20.0),
                    ),
                  ),
                ],
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_forward_ios,
                  size: 20.0,
                  color: Theme.of(context).accentColor,
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 25.0,
        ),
      ],
    );
  }
}
