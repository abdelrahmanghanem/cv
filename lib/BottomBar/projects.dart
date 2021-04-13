import 'package:cv/projects/3lahwaProject.dart';
import 'package:cv/projects/DlwaqtyProject.dart';
import 'package:flutter/material.dart';

import '../shared/style.dart';
import '../projects/gymProject.dart';

class NavigateProjectPage extends StatefulWidget {
  @override
  _NavigateProjectPageState createState() => _NavigateProjectPageState();
}

class _NavigateProjectPageState extends State<NavigateProjectPage> with SingleTickerProviderStateMixin {
  TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = new TabController(length: 3, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: color0,
      //   title: Text("Profile"),
      // ),
      backgroundColor: color0,
      body: new ListView(
        children: <Widget>[
          new Container(
            decoration: new BoxDecoration(color: color0),
            child: new TabBar(
              controller: _controller,
              isScrollable:true,
              tabs: [
                Container(

                  margin: EdgeInsets.only(top: 5,bottom: 5),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 20,
                        height: 20,
                        child: Image.asset("assets/image/1.png",),),
                      Container(
                          padding: EdgeInsets.only(left: 10),
                          child: Text("Dlwaqty",style:TextStyle(color: color0),)
                      )
                    ],
                  ),
                ),
                Container(

                  margin: EdgeInsets.only(top: 5,bottom: 5),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 20,
                        height: 20,
                        child: Image.asset("assets/gym/11.png",),),
                      Container(
                          padding: EdgeInsets.only(left: 10),
                          child: Text("Fitlyft",style:TextStyle(color: color0),)
                      )
                    ],
                  ),
                ),
                Container(

                  margin: EdgeInsets.only(top: 5,bottom: 5),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 20,
                        height: 20,
                        child: Image.asset("assets/elahwa/football.png",),),
                      Container(
                          padding: EdgeInsets.only(left: 10),
                          child: Text("3lahwa",style:TextStyle(color: color0),)
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          new Container(
            color: Colors.red,
            height: height*0.9,
            child: new TabBarView(
              controller: _controller,
              children: <Widget>[
                DlwaqtyProject(),
                GymProject(),
                AlahwaProject(),

              ],
            ),
          ),
        ],
      ),

    );
  }
}
