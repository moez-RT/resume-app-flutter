import 'package:flutter/material.dart';
import 'package:tuto_app/models/item.dart';
import 'package:tuto_app/utils/constants.dart';
import 'custom_timeline.dart';
import 'event_container.dart';


class EducationDetail extends StatefulWidget {
  const EducationDetail({
    Key key,
  }) : super(key: key);

  @override
  _EducationDetailState createState() => _EducationDetailState();
}

class _EducationDetailState extends State<EducationDetail> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        reverse: true,
        padding: EdgeInsets.symmetric(vertical: 10.0),
        itemCount: listEducation.length,
        itemBuilder: (context, index) {
          return (
              CustomTimeLine(
                title: EventContainer(
                    color: Colors.white,
                    textColor: kPrimaryColor,
                    durationColor: kSecondaryColor,
                    title: listEducation[index].title,
                    duration: listEducation[index].duration),
                icon: listEducation[index].icon,
                colorEvent: kSecondaryColor,
                colorLine: kPrimaryColor,
              ));
        });
  }
}