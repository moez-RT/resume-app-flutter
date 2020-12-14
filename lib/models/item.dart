import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Item {
  String title;
  IconData icon;

  Item({this.title, this.icon});
}

final List<Item> itemList = [
  Item(title: 'Education', icon: Icons.school),
  Item(title: 'Experience', icon: Icons.work),
  Item(title: 'Skills', icon: Icons.highlight),
  Item(title: 'Passion', icon: Icons.favorite),
];

class Skill {
  String title;
  double knowledge;

  Skill({this.title, this.knowledge});
}

final List<Skill> skillList = [
  Skill(title: 'C++', knowledge: 4.0),
  Skill(title: 'Python', knowledge: 8.0),
  Skill(title: 'Flutter', knowledge: 5.5),
  Skill(title: 'Angular', knowledge: 8.5),
  Skill(title: 'Laravel', knowledge: 6.5),
  Skill(title: 'React', knowledge: 2.5),
  Skill(title: 'Git', knowledge: 7.5),
  Skill(title: 'Java', knowledge: 6.0),
];

class Category {
  String title;
  List<Skill> skills;

  Category({this.title, this.skills});
}

final List<Category> listCategory = [
  Category(title: 'Programming Languages', skills: [
    Skill(title: 'C++', knowledge: 4.0),
    Skill(title: 'Python', knowledge: 8.0),
    Skill(title: 'Java', knowledge: 6.0),
  ]),
  Category(title: 'Mobile Development', skills: [
    Skill(title: 'Flutter', knowledge: 5.5),
    Skill(title: 'React Native', knowledge: 2.5),
  ]),
  Category(title: 'Web Framework', skills: [
    Skill(title: 'React', knowledge: 2.5),
    Skill(title: 'Laravel', knowledge: 6.5),
    Skill(title: 'Django', knowledge: 8.0),
    Skill(title: 'Angular', knowledge: 8.5),
  ]),
  Category(title: 'Management Software', skills: [
    Skill(title: 'Git', knowledge: 7.5),
  ]),
];


class Education {
  String title;
  String duration;
  IconData icon;

  Education({this.title, this.duration,this.icon});
}

final List<Education> listEducation = [
  Education(
    title: "Bachelor's degree in experimental sciences with High Honours",
    duration: '2017',
    icon: Icons.school
  ),
  Education(
    title: "Preparatory cycle MPI",
    duration: '2017-2019',
    icon: Icons.school
  ),
  Education(
    title: "Network and Telecommunication Engineer",
    duration: '2019-2022',
    icon: Icons.school
  ),
];