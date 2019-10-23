import 'package:flutter/material.dart';
import 'screens/search_task.dart';
import 'constant.dart';
import 'component/task_section.dart';

void main() => runApp(MainApp());

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Dashboard(),
      title: 'ToDo App',
      debugShowCheckedModeBanner: false,
    );
  }
}

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: null,
      body: ListView(
        padding: EdgeInsets.only(left: 20.0, top: 60.0, right: 20.0),
        children: <Widget>[
          SearchTask(),
          SizedBox(
            height: 20.0,
          ),
          Text(
            'Friday, 26',
            style: kTitleText,
          ),
          SizedBox(
            height: 20.0,
          ),
          TaskSection('Design Work'),
          SizedBox(
            height: 20.0,
          ),
          TaskSection('TODO'),
          SizedBox(
            height: 80.0,
          ),
          FlatButton(
            color: Color(0xFF00a8b0),
            shape: RoundedRectangleBorder(borderRadius:BorderRadius.all(Radius.circular(10.0)),),

            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  Text(
                    'Add New task',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
