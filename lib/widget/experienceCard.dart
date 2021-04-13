import 'package:cv/shared/style.dart';
import 'package:flutter/material.dart';

class ExperienceCardWidget extends StatefulWidget {
  final Map<String,dynamic> item;
  const ExperienceCardWidget({Key key ,@required this.item}): super(key: key);
  @override

  _ExperienceCardWidgetState createState() => _ExperienceCardWidgetState();
}

class _ExperienceCardWidgetState extends State<ExperienceCardWidget> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Container(
          width: width,
          margin: EdgeInsets.only( left: 18, right: 18),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(

              color: color1, borderRadius: BorderRadius.circular(10)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 20,horizontal: 15),
                width: 60,height: 60,
                child: Image.asset(widget.item["image"],),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      margin: EdgeInsets.only(top: 15,bottom: 10),
                      child: Text(widget.item["title"],style: experienceTitle,)
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    width: width*0.6,
                    child: Text(widget.item["subtitle"],style: TextStyle(
                        color: Colors.grey.shade500,
                        fontSize: 16,
                        fontWeight: FontWeight.w500
                    ),),
                  ),


                ],
              ),

            ],
          ),
        ),
        SizedBox(height: height*0.01,),
      ],
    );
  }
}
