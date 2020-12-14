import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool leading;

  const CustomAppBar({@required this.title,this.leading, Key key, }): super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    showSnackBar() {
      final snackBar = SnackBar(
        content: const Text('Hello, Coflutter!'),
        backgroundColor: const Color(0xffae00f0),
        behavior: SnackBarBehavior.floating,
        duration: const Duration(seconds: 2),
        action: SnackBarAction(
            label: 'Done',
            textColor: Colors.white,
            onPressed: () {
              print('Done pressed!');
            }),
      );
      Scaffold.of(context).showSnackBar(snackBar);
    }
    return AppBar(
      leading: leading? IconButton(
        icon: Icon(Icons.menu),
        onPressed: showSnackBar,
      ): IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed:() {Navigator.of(context).pop();},
      ),
      backgroundColor: Theme.of(context).primaryColor,
      title: Text(title, style: GoogleFonts.alegreyaSans(fontSize: 24.0)),
      actions: [
        IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
      ],
    );
  }
}
