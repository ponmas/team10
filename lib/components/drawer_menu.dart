import 'package:flutter/material.dart';
import 'package:app_team10/screens/setting_page.dart';
import 'package:app_team10/screens/timer_page.dart';
import 'package:app_team10/screens/calendar_page.dart';
import 'package:app_team10/constants.dart';

class DrawerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        DrawerHeader(
          child: Text(
            'Morning Study',
            style: TextStyle(
              fontSize: 40,
              color: Colors.white,
            ),
          ),
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
        ),
        ListTile(
          title: Text(
            'Setting',
            style: kDrawerTextStyle,
          ),
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (content) => SettingPage(),
              ),
            );
          },
        ),
        ListTile(
          title: Text(
            'Timer',
            style: kDrawerTextStyle,
          ),
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (content) => TimerPage(),
              ),
            );
          },
        ),
        ListTile(
          title: Text(
            'Calendar',
            style: kDrawerTextStyle,
          ),
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (content) => CalendarPage(),
              ),
            );
          },
        )
      ],
    );
  }
}

