import 'package:cv/shared/style.dart';
import 'package:cv/widget/skillesCardWidget.dart';
import 'package:flutter/material.dart';

class SkillsPage extends StatefulWidget {
  @override
  _SkillsPageState createState() => _SkillsPageState();
}

class _SkillsPageState extends State<SkillsPage> {
  var skillsArray = [
    {
      "title" : "Flutter",
      "percent" : "0.95",
      "subtitle" : "95%",
    },
    {
      "title" : "Dart",
      "percent" : "0.88",
      "subtitle" : "88%",
    },
    {
      "title" : "Restful Api",
      "percent" : "0.93",
      "subtitle" : "93%",
    },
    {
      "title" : "Soap Api",
      "percent" : "0.93",
      "subtitle" : "93%",
    },
    {
      "title" : "MVC FrameWork",
      "percent" : "0.95",
      "subtitle" : "95%",
    },
    {
      "title" : "Edit on package",
      "percent" : "0.80",
      "subtitle" : "80%",
    },

    {
      "title" : "UI/UX Design",
      "percent" : "0.95",
      "subtitle" : "95%",
    },
    {
      "title" : "Git",
      "percent" : "0.85",
      "subtitle" : "85%",
    },
    {
      "title" : "Agile",
      "percent" : "0.80",
      "subtitle" : "80%",
    },
    {
      "title" : "Swift UI",
      "percent" : "0.75",
      "subtitle" : "75%",
    },



  ];
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: color0,
        title: Text("Skills"),
      ),
      backgroundColor: color0,
      body: Center(
        child: Container(
          width: width,
          height: height,
          margin: EdgeInsets.only(top: 10, bottom: 10, left: 18, right: 18),
          decoration: BoxDecoration(

              color: color1, borderRadius: BorderRadius.circular(10)),

          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                 SizedBox(height: height*0.02,),
                Column(
                  children: List.generate(skillsArray.length, (index) {
                    return SkillsCardWidget(item:skillsArray[index] ,);
                  }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
