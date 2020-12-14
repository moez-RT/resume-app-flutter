import 'package:flutter/material.dart';
import 'package:tuto_app/models/item.dart';
import 'package:tuto_app/widgets/custom_card.dart';

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GridView.count(
            crossAxisCount:
            MediaQuery.of(context).orientation == Orientation.portrait
                ? 2
                : 4,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            children: List.generate(itemList.length, (index) {
              return Center(
                child: CustomCard(
                    title: itemList[index].title,
                    icon: itemList[index].icon,
                    index: index),
              );
            }),
          ),
        ],
      ),
    );
  }
}
