import 'package:flutter/material.dart';

class CustomWidgetFloatingButtom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: Icon(Icons.filter_center_focus_sharp),
      backgroundColor: Colors.green,
      onPressed: () {},
    );
  }
}
