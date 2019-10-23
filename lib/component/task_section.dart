import 'package:flutter/material.dart';
import 'list_tile_task.dart';
import '../constant.dart';

class TaskSection extends StatelessWidget {
  TaskSection(this.categoryName);
  final String categoryName;


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(categoryName.toUpperCase(), style: kSubTitleText),
        SizedBox(
          height: 20.0,
        ),
        ListTileTask(
          taskTitle: 'Send final files to jassica',
          colorCheckBox: Color(0xFF935f28),
        ),
        SizedBox(
          height: 10.0,
        ),
        ListTileTask(
          taskTitle: 'Finish prototype for mobile',
          colorCheckBox: Color(0xFF0a8dae),
        ),
      ],
    );
  }
}