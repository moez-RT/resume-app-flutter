import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:timeline_tile/timeline_tile.dart';

class CustomTimeLine extends StatelessWidget {
  final Widget title;
  final IconData icon;
  final Color colorEvent;
  final Color colorLine;

  const CustomTimeLine({
    this.title,
    this.icon,
    this.colorLine,
    this.colorEvent,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 50.0, right: 10.0),
      child: TimelineTile(
        alignment: TimelineAlign.start,
        beforeLineStyle: LineStyle(
          color: colorLine,
          thickness: 6,
        ),
        indicatorStyle: IndicatorStyle(
          width: 20,
          color: colorEvent,
        ),
        endChild: title,
      ),
    );
  }
}
