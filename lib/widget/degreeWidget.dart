import 'package:cv/shared/style.dart';
import 'package:flutter/material.dart';

class DegreeWidget extends StatefulWidget {
  final Map<String,dynamic> item;
  const DegreeWidget({Key key ,@required this.item}): super(key: key);
  @override
  _DegreeWidgetState createState() => _DegreeWidgetState();
}

class _DegreeWidgetState extends State<DegreeWidget> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return    Column(
      children: [
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 20,top: 10),
              width: 30,height: 30,
              child: Image.asset(widget.item["image"],color: color2),
            ),
            Container(
              margin: EdgeInsets.only(left: 20,top: 20),
              child:Text(widget.item["date"],style: TextStyle(color: Colors.grey.shade500),) ,
            )
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 32,top: 10),
              width: 2,
              height: height*0.15,
              decoration: BoxDecoration(
              color: color2
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 35,top: 10),
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      margin: EdgeInsets.only(bottom: 15),
                      child: Text(widget.item["title"],style: experienceTitle,)),
                  Text(widget.item["subtitle"],style: experienceSubtitle,),
                ],
              ) ,
            )
          ],
        )
      ],
    );
  }
}