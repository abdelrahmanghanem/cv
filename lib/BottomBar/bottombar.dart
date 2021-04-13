import 'package:cv/BottomBar/profile.dart';
import 'package:cv/BottomBar/projects.dart';
import 'package:cv/BottomBar/skills.dart';
import 'package:cv/shared/style.dart';
import 'package:flutter/material.dart';
import 'degreePage.dart';
import 'experiencePage.dart';


class BottomBar extends StatefulWidget {
  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _currentIndex = 2;
  final _pageOptions = [
    NavigateProjectPage(),
    ExperiencePage(),
    ProfilePage(),
    SkillsPage(),
    DegreePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageOptions[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        iconSize: 22,
        elevation: 0,
        backgroundColor: color0,
        selectedIconTheme: IconThemeData(size: 28),
        unselectedItemColor: Colors.grey,
        selectedFontSize: 13,
        unselectedFontSize: 10,
        selectedItemColor:  color2,

        items: [
          BottomNavigationBarItem(
            icon:_currentIndex == 0 ? Container(
              width: 25,height: 25,
              child: Image.asset("assets/icon/analytics.png", color:color2),
            ):
            Container(
              width: 25,height: 25,
              child: Image.asset("assets/icon/analytics.png", color:Colors.grey),
            ) ,
            title: Text("Projects"),
          ),

          BottomNavigationBarItem(
              icon:_currentIndex == 1 ?  Container(
                width: 25,height: 25,
                child: Image.asset("assets/icon/settings.png",color: color2),
              ):
              Container(
                width: 25,height: 25,
                child: Image.asset("assets/icon/settings.png",color: Colors.grey,),
              ),
              title: Text("Experience"),
              backgroundColor: Colors.deepOrangeAccent),
          BottomNavigationBarItem(
              icon:_currentIndex == 2 ?  Container(
                width: 40,height: 30,
                child: Icon(Icons.person,color:  color2),
              ):
              Container(
                width: 40,height: 30,
                child: Icon(Icons.person,color: Colors.grey,),
              ) ,
              title: Text("Profile"),
              backgroundColor: Colors.grey),
          BottomNavigationBarItem(
              icon:_currentIndex == 3 ?  Container(
                width: 25,height: 25,
                child: Image.asset("assets/icon/target.png",color:color2),
              ):
              Container(
                width: 25,height: 25,
                child: Image.asset("assets/icon/target.png", color: Colors.grey,),),
              title: Text("Skills"),
          ),
          BottomNavigationBarItem(
              icon:_currentIndex == 4 ?  Container(
                width: 25,height: 25,
                child: Image.asset("assets/icon/graduation-cap.png",color: color2),
              ):
              Container(
                width: 40,height: 30,
                 child: Image.asset("assets/icon/graduation-cap.png", color: Colors.grey,),
              ),
              title: Text("degree"),
          ),

        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}