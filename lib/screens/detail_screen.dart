import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';
import 'package:tuto_app/models/item.dart';
import 'package:tuto_app/utils/constants.dart';
import 'package:tuto_app/utils/constants.dart';
import 'package:tuto_app/utils/constants.dart';
import 'package:tuto_app/utils/constants.dart';
import 'package:tuto_app/utils/constants.dart';
import 'package:tuto_app/utils/constants.dart';
import 'package:tuto_app/utils/constants.dart';
import 'package:tuto_app/utils/constants.dart';
import 'package:tuto_app/utils/constants.dart';
import 'package:tuto_app/widgets/custom_app_bar.dart';
import 'package:tuto_app/widgets/custom_card.dart';
import 'package:tuto_app/widgets/custom_timeline.dart';
import 'package:tuto_app/widgets/education_detail.dart';
import 'package:tuto_app/widgets/event_container.dart';
import 'package:tuto_app/widgets/passion_detail.dart';
import 'package:tuto_app/widgets/skill_circle.dart';
import 'package:tuto_app/widgets/skill_detail.dart';

class DetailScreen extends StatefulWidget {
  final int index;

  const DetailScreen({this.index});

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  Widget educationDetail() {
    return EducationDetail();
  }

  Widget skillDetail() {
    return  ListView.builder(
        itemCount: listCategory.length,
        itemBuilder: (context, index ) {
          return Column(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  margin: EdgeInsets.all(8.0),
                  padding: EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.white
                  ),
                  child: Text(
                    listCategory[index].title, style: kBoldGreyText,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              SkillDetail(
                category: listCategory[index],
              ),
            ],
          );

  }
    );
  }

  Widget renderContent() {
    switch (widget.index) {
      case 0:
        {
          return educationDetail();
        }
        break;

      case 1:
        {
          return educationDetail();
        }
        break;
      case 2:
        {
          return skillDetail();
        }
        break;
      case 3:
        {
          return PassionDetail();
        }
        break;

      default:
        {
          return educationDetail();
        }
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: itemList[widget.index].title,
        leading: false,
      ),
      body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              kPrimaryColor.withOpacity(.7),
              kSecondaryColor.withOpacity(.7),
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          ),
          child: renderContent()),
      // CustomCard(
      //     title: itemList[widget.index].title,
      //     icon: itemList[widget.index].icon,
      //     index: widget.index),
    );
  }
}




