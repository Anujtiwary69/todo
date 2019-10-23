import 'package:flutter/material.dart';
import '../constant.dart';

class ListTileTask extends StatelessWidget {
  ListTileTask({this.taskTitle,this.colorCheckBox});
  final String taskTitle;
  final Color colorCheckBox;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kSecondaryColor,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListTile(
          leading: Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(
                width: 2.0,
                color: colorCheckBox,
              ),
            ),
          ),
          title: Text(
            taskTitle,
            style: TextStyle(
                color: kTitleTaskColor,
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 1),
          ),
          trailing: Icon(
            Icons.more_horiz,
            color: Color(0xFF606064),
          ),
        ),
      ),
    );
  }
}
