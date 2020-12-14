import 'package:flutter/material.dart';
import 'package:tuto_app/models/item.dart';
import 'package:tuto_app/widgets/skill_circle.dart';
class SkillDetail extends StatefulWidget {
  final Category category;
  SkillDetail({this.category});
  @override
  _SkillDetailState createState() => _SkillDetailState();
}

class _SkillDetailState extends State<SkillDetail> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // skillList.sort((a, b) => b.knowledge.compareTo(a.knowledge));
    widget.category.skills.sort((a, b) => b.knowledge.compareTo(a.knowledge));
  }
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: EdgeInsets.all(10.0),
      crossAxisCount:
      MediaQuery.of(context).orientation == Orientation.portrait ? 3 : 4,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      children: List.generate(widget.category.skills.length, (index) {
        return Center(
          child: SkillCircle(skill: widget.category.skills[index]),
        );
      }),
    );
  }
}