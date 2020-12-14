import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tuto_app/widgets/custom_app_bar.dart';

class FormScreen extends StatefulWidget {
  @override
  _FormScreenState createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Form',
        leading: false,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Theme.of(context).primaryColor.withOpacity(.5),
            Theme.of(context).accentColor.withOpacity(.5),
          ], begin: Alignment.topLeft, end: Alignment.bottomRight),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(7.0),
              margin: EdgeInsets.all(MediaQuery.of(context).size.width*.1),
              decoration: BoxDecoration(
                  color: Colors.teal[100],
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: [
                    BoxShadow(
                      spreadRadius: 2.0,
                      blurRadius: 2.0,
                      color: Colors.white60,
                    )
                  ]),
              height: MediaQuery.of(context).size.height * .28,
              child: Column(
                children: [
                  Expanded(
                    flex: 1,
                    child: TextFormField(
                      style: GoogleFonts.alegreyaSans(
                        color: Colors.grey[700],
                        fontWeight: FontWeight.w700,
                        fontSize: 20.0,
                      ),
                      decoration: InputDecoration(
                          hintText: 'user@gmail.com',
                          labelText: 'Email',
                          prefixIcon: Icon(Icons.email),
                          labelStyle: GoogleFonts.alegreyaSans(
                            fontWeight: FontWeight.w700,
                            fontSize: 20.0,
                          )),
                      validator: (String value) {
                        return value.contains('@')
                            ? null
                            : 'Not a valid email';
                      },
                      onSaved: (String value) {},
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: TextFormField(
                      style: GoogleFonts.alegreyaSans(
                        color: Colors.grey[700],
                        fontWeight: FontWeight.w700,
                        fontSize: 20.0,
                      ),
                      decoration: InputDecoration(
                          hintText: 'username',
                          labelText: 'Username',
                          prefixIcon: Icon(Icons.supervised_user_circle),
                          labelStyle: GoogleFonts.alegreyaSans(
                            fontWeight: FontWeight.w700,
                            fontSize: 20.0,
                          )),
                      validator: (String value) {
                        return value.contains('@')
                            ? null
                            : 'Not a valid email';
                      },
                      onSaved: (String value) {},
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: TextFormField(
                      obscureText: true,
                      enableSuggestions: false,
                      autocorrect: false,
                      style: GoogleFonts.alegreyaSans(
                        color: Colors.grey[700],
                        fontWeight: FontWeight.w700,
                        fontSize: 20.0,
                      ),
                      decoration: InputDecoration(
                          hintText: 'password',
                          labelText: 'Password',
                          prefixIcon: Icon(Icons.lock),
                          labelStyle: GoogleFonts.alegreyaSans(
                            fontWeight: FontWeight.w700,
                            fontSize: 20.0,
                          )),
                      validator: (String value) {
                        return null;
                      },
                      onSaved: (String value) {},
                    ),
                  ),
                ],
              ),
            ),
           ]
              ),
            ),

    );
  }
}
