import 'package:cv/shared/style.dart';
import 'package:cv/widget/degreeWidget.dart';
import 'package:flutter/material.dart';

class DegreePage extends StatefulWidget {
  @override
  _DegreePageState createState() => _DegreePageState();
}

class _DegreePageState extends State<DegreePage> {
  var degreeArray= [
    {
      "image" : "assets/icon/graduation-cap.png",
      "date" : "2015 / 2019",
      "title" : "New Cairo Academy ",
      "subtitle" : "I am a graduate of Computer Science\nI am the first on my batch in four years\nExcellent grade and GPA 3.88",
    },
    {
      "image" : "assets/icon/graduation-cap.png",
      "date" : "2011 / 2014",
      "title" : "Azhari Secondary Institute ",
      "subtitle" : "Azhari Secondary Institute for Boys,\nSidi Salem Center",
    },
    {
      "image" : "assets/icon/graduation-cap.png",
      "date" : "2009 / 2011",
      "title" : "Azhari Preparatory Institute",
      "subtitle" : "Azhari Preparatory Institute,\nBenin Salem Center ",
    },
    {
      "image" : "assets/icon/graduation-cap.png",
      "date" : "2003 / 2009",
      "title" : "Azhari Elementary Institute",
      "subtitle" : "The Azhari Elementary Institute,Benin,\nin the center of Sidi Salem ",
    },
  ];
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: color0,
        title: Text("Degree"),
      ),
      backgroundColor: color0,
      body: SingleChildScrollView(
        child: Container(

          width: width,
          margin: EdgeInsets.only(top: 15, bottom:15, left: 18, right: 18),
          decoration: BoxDecoration(
            color: color1, borderRadius: BorderRadius.circular(10),

          ),
          child: Column(
            children: [
              Column(
                children: List.generate(degreeArray.length, (index) {
                  return DegreeWidget(item:degreeArray[index] ,);
                })
              ),
              SizedBox(height: 20,)
            ],
          ),
        ),
      ),
    );
  }
}

