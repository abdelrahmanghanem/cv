import 'package:cv/shared/style.dart';
import 'package:cv/widget/experienceCard.dart';
import 'package:flutter/material.dart';

class ExperiencePage extends StatefulWidget {
  @override
  _ExperiencePageState createState() => _ExperiencePageState();
}

class _ExperiencePageState extends State<ExperiencePage> {
  var experienceArray = [
    {
      "image" : "assets/image/nca.jpeg",
      "title" : "New Cairo Academy",
      "subtitle" : "I have been working since Des 2019 Until now",
    },
    {
      "image" : "assets/image/1.png",
      "title" : "Dlwaqty",
      "subtitle" : "I have been working since Mar 2019 Until Nov 2019",
    },
    {
      "image" : "assets/image/2.png",
      "title" : "Respostat",
      "subtitle" : "I have been working since Jan 2018 Until 2019",
    },
  ];
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: color0,
          title: Text("Experience"),
        ),
        backgroundColor: color0,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: width,
                padding: EdgeInsets.all(15),
                margin: EdgeInsets.only(top: 15, bottom: 15, left: 18, right: 18),
                decoration: BoxDecoration(
                    color: color1, borderRadius: BorderRadius.circular(10)),
                child: Text("I Worked In",style: sName,)
              ),
              SizedBox(height: height*0.001,),
              Column(
                children: List.generate(experienceArray.length, (index) {
                  return ExperienceCardWidget(item: experienceArray[index],);
                }),
              )

            ],
          ),
        ),
       );
  }
}
