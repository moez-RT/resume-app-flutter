import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:tuto_app/models/item.dart';
import 'package:tuto_app/utils/constants.dart';

enum LegendShape { Circle, Rectangle }

class SkillCircle extends StatefulWidget {
  final Skill skill;

  SkillCircle({this.skill});

  @override
  _SkillCircleState createState() => _SkillCircleState();
}

class _SkillCircleState extends State<SkillCircle> {
  ChartType _chartType = ChartType.ring;
  bool _showCenterText = true;
  double _ringStrokeWidth = 7;
  double _chartLegendSpacing = 32;

  bool _showLegendsInRow = false;
  bool _showLegends = false;

  bool _showChartValueBackground = false;
  bool _showChartValues = false;
  bool _showChartValuesInPercentage = false;
  bool _showChartValuesOutside = false;
  LegendShape _legendShape = LegendShape.Circle;
  LegendPosition _legendPosition = LegendPosition.right;
  Map<String, double> dataMap;
  List<Color> colorList;

  Color usedColor;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    colorList = [
      getAppropriateColor(widget.skill.knowledge),
      Colors.white,
    ];
    dataMap = {
      widget.skill.title: widget.skill.knowledge,
      "None": 10.0 - widget.skill.knowledge,
    };
    usedColor = getAppropriateColor(widget.skill.knowledge);
  }

  Color getAppropriateColor(double number) {
    if (number >= 7.0) {
      return kGoodKnowledge;
    } else if (number > 3.0) {
      return kMediumKnowledge;
    } else
      return kBadKnowledge;
  }

  TextStyle getAppropriateTextStyle(double number) {
    if (number >= 7.0) {
      return kSimplePrimaryText;
    } else if (number > 3.0) {
      return kSimpleSecondaryText;
    } else
      return kSimpleRedText;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: RatingBarIndicator(
            rating: widget.skill.knowledge / 2,
            itemBuilder: (context, index) => Icon(
              Icons.star,
              color: usedColor,
            ),
            itemCount: 5,
            itemSize: 15.0,
            unratedColor: usedColor.withAlpha(50),
            direction: Axis.horizontal,
          ),
        ),
        PieChart(
          dataMap: dataMap,
          animationDuration: Duration(milliseconds: 1000),
          chartLegendSpacing: _chartLegendSpacing,
          chartRadius: MediaQuery.of(context).size.width / 5 > 250
              ? 150
              : MediaQuery.of(context).size.width / 5,
          colorList: colorList,
          initialAngleInDegree: 0,
          chartType: _chartType,
          legendOptions: LegendOptions(
            showLegendsInRow: _showLegendsInRow,
            legendPosition: _legendPosition,
            showLegends: _showLegends,
            legendShape: _legendShape == LegendShape.Circle
                ? BoxShape.circle
                : BoxShape.rectangle,
            legendTextStyle: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          chartValuesOptions: ChartValuesOptions(
            showChartValueBackground: _showChartValueBackground,
            showChartValues: _showChartValues,
            showChartValuesInPercentage: _showChartValuesInPercentage,
            showChartValuesOutside: _showChartValuesOutside,
          ),
          ringStrokeWidth: _ringStrokeWidth,
        ),
        Center(
          child: Container(
            margin: EdgeInsets.all(20.0),
            child: Text(
              widget.skill.title,
              textAlign: TextAlign.center,
              style: getAppropriateTextStyle(widget.skill.knowledge),
            ),
          ),
        )
      ],
    );
  }
}
