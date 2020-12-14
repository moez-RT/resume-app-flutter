import 'package:flutter/material.dart';
import 'package:tuto_app/utils/constants.dart';

class PassionDetail extends StatefulWidget {
  @override
  _PassionDetailState createState() => _PassionDetailState();
}

class _PassionDetailState extends State<PassionDetail> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return
       Center(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Stack(
            children: [

            ],
          ),
        ),


    );
  }
}



class BackgroundClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    const roundnessFactor = 50.0;
    path.moveTo(0, size.height * 0.30);
    path.lineTo(0, size.height-roundnessFactor);
    path.quadraticBezierTo(0, size.height, roundnessFactor, size.height);
    path.lineTo(size.width-roundnessFactor, size.height);
    path.quadraticBezierTo(size.width, size.height, size.width, size.height-roundnessFactor);
    path.lineTo(size.width , roundnessFactor );
    path.quadraticBezierTo(size.width, 0, size.width-roundnessFactor*2, roundnessFactor);


    // path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    throw UnimplementedError();
  }
  
}
