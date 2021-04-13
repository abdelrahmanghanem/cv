import 'package:cv/shared/style.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class SkillsCardWidget extends StatefulWidget {
  final Map<String,dynamic> item;
  const SkillsCardWidget({Key key ,@required this.item}):super(key: key);
  @override
  _SkillsCardWidgetState createState() => _SkillsCardWidgetState();
}

class _SkillsCardWidgetState extends State<SkillsCardWidget> {
  @override
  Widget build(BuildContext context) {
    double x = double.parse(widget.item["percent"]);
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return   Container(
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(

          color: white,
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          Expanded(
              flex:2,
              child: Text(widget.item["title"],style: skillStyle1,)
          ),
          Expanded(
            flex:5,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: new LinearPercentIndicator(

                width: width*0.47,
                animation: true,
                lineHeight: 13.0,
                animationDuration: 2000,
                percent: x,
                linearStrokeCap: LinearStrokeCap.roundAll,

                //  backgroundColor:white,
                progressColor: Color.fromRGBO(96, 97, 210, 1),
                trailing:Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Text(widget.item["subtitle"],style: skillStyle1,)),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
