import 'package:flutter/material.dart';
import '../constant.dart';

class SearchTask extends StatelessWidget {
  const SearchTask({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
//      textAlign: TextAlign.center,
      style: TextStyle(
        color: Color(0xFFf0f0f2),
      ),
      decoration: InputDecoration(
          hintText: '   Search task',
          alignLabelWithHint: true,
          hintStyle: TextStyle(color: Color(0xFF43434c), fontSize: 20.0),
          contentPadding: EdgeInsets.all(20.0),
          fillColor: kSecondaryColor,
          filled: true,
          suffix: CircleAvatar(
            radius: 10.0,
            backgroundImage: NetworkImage(
                'https://pbs.twimg.com/profile_images/624152523784368129/wznYO6bR.jpg'),
          ),
          prefixIcon: Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 0.0, right: 20.0),
            child: Icon(
              Icons.menu,
              color: Color(0xFFdddde0),
              size: 30.0,
            ),
          ),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.0),
              borderSide: BorderSide(width: 106.0, color: Color(0xFF43434c)))),
    );
  }
}
