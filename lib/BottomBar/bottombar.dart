import 'package:cv/BottomBar/profile.dart';
import 'package:cv/BottomBar/projects.dart';
import 'package:cv/BottomBar/skills.dart';
import 'package:cv/projects/DlwaqtyProject.dart';
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
        selectedItemColor:  Color.fromRGBO(44, 110, 203, 1),
        // unselectedItemColor: Colors.grey,

        items: [
          BottomNavigationBarItem(
            icon:_currentIndex == 0 ? Container(
              width: 25,height: 25,
              child: Image.asset("assets/icon/analytics.png", color:Color.fromRGBO(44, 110, 203, 1),),
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
               // child: Icon(Icons.access_alarm,color: white,),
                child: Image.asset("assets/icon/settings.png",color: Color.fromRGBO(44, 110, 203, 1),),
              ):
              Container(
                width: 25,height: 25,
                // child: Icon(Icons.access_alarm,color: white,),
                child: Image.asset("assets/icon/settings.png",color: Colors.grey,),
                //  child: Image.asset("assets/image/home.png",scale: 10, color: Colors.grey,),
              ),
              title: Text("Experience"),
              backgroundColor: Colors.deepOrangeAccent),
          BottomNavigationBarItem(
              icon:_currentIndex == 2 ?  Container(
                width: 40,height: 30,
                child: Icon(Icons.person,color:  Color.fromRGBO(44, 110, 203, 1),),
                // child: Image.asset("assets/image/phone.png",scale: 10, color: Color.fromRGBO(240, 179, 117, 1),),
              ):
              Container(
                width: 40,height: 30,
                child: Icon(Icons.person,color: Colors.grey,),
                //  child: Image.asset("assets/image/phone.png",scale: 10, color: Colors.grey,),
              ) ,
              title: Text("Profile"),
              backgroundColor: Colors.grey),
          BottomNavigationBarItem(
              icon:_currentIndex == 3 ?  Container(
                width: 25,height: 25,
                child: Image.asset("assets/icon/target.png",color: Color.fromRGBO(44, 110, 203, 1),),
              ):
              Container(
                width: 25,height: 25,
                child: Image.asset("assets/icon/target.png", color: Colors.grey,),

              ),
              title: Text("Skills"),
              backgroundColor: Colors.deepOrangeAccent),
          BottomNavigationBarItem(
              icon:_currentIndex == 4 ?  Container(
                width: 25,height: 25,
                // child: Icon(Icons.access_alarm,color: white,),
                child: Image.asset("assets/icon/graduation-cap.png",color: Color.fromRGBO(44, 110, 203, 1),),
                //child: Image.asset("assets/image/home.png",scale: 10, color: Color.fromRGBO(240, 179, 117, 1),),
              ):
              Container(
                width: 40,height: 30,
               // child: Icon(Icons.add_a_photo,color: Colors.grey,),
                 child: Image.asset("assets/icon/graduation-cap.png", color: Colors.grey,),
              ),
              title: Text("degree"),
              backgroundColor: Colors.deepOrangeAccent),

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