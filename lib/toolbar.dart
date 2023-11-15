import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Toolbar extends StatelessWidget implements PreferredSizeWidget {
  Toolbar(this.color1, this.activityName);

  final Color? color1;
  final String? activityName;

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AppBar(
      title: Text("$activityName"),
      backgroundColor: color1,
      elevation: 2.0,
    );
  }
}
