import 'package:cv/projects/DlwaqtyProject.dart';
import 'package:cv/shared/style.dart';
import 'package:flutter/material.dart';

import '3lahwaProject.dart';
import 'MobiscoreProject.dart';
import 'gymProject.dart';





class MatchPage extends StatefulWidget {
  @override
  _MatchPageState createState() => _MatchPageState();
}

class _MatchPageState extends State<MatchPage>
    with SingleTickerProviderStateMixin {
  TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4 , vsync: this);
  }
  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(

                bottom: PreferredSize(
                  child:TabBar(
                indicatorWeight:2 ,
                isScrollable: true,
                unselectedLabelColor: Colors.white.withOpacity(0.3),
                indicatorColor: Colors.red,
                controller: tabController,
                tabs: <Widget>[
                  Container(
                    width: width*0.28,
                   // margin: EdgeInsets.only(top: 5,left: 10,right: 5,bottom: 5),
                    padding: EdgeInsets.only(top: 10,bottom: 10),
                    decoration: BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 18,
                          height: 18,
                          child: Image.asset("assets/icon/calendar.png",color: color0),),
                        Container(
                            padding: EdgeInsets.only(left: 10),
                            child: Text("Dlwaqty",style:TextStyle(color: color0),)
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: width*0.28,
                    //margin: EdgeInsets.only(top: 5,left: 5,right: 5,bottom: 5),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 18,
                          height: 18,
                          child: Image.asset("assets/icon/calendar.png",color: color0),),
                        Container(
                            padding: EdgeInsets.only(left: 10),
                            child: Text("Dlwaqty",style:TextStyle(color: color0),)
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: width*0.28,
                   // margin: EdgeInsets.only(top: 5,left: 10,right: 5,bottom: 5),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 18,
                          height: 18,
                          child: Image.asset("assets/icon/calendar.png",color: color0),),
                        Container(
                            padding: EdgeInsets.only(left: 10),
                            child: Text("Dlwaqty",style:TextStyle(color: color0),)
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: width*0.28,
                   // margin: EdgeInsets.only(top: 5,left: 5,right: 5,bottom: 5),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 18,
                          height: 18,
                          child: Image.asset("assets/icon/calendar.png",color: color0),),
                        Container(
                            padding: EdgeInsets.only(left: 10),
                            child: Text("Dlwaqty",style:TextStyle(color: color0),)
                        )
                      ],
                    ),
                  ),



                ],
              ),
                  preferredSize: Size.fromHeight(20.0),
                 )
            ),
            SliverFillRemaining(
              child: TabBarView(
                controller: tabController,
                children: <Widget>[
                  GymProject(),
                  AlahwaProject(),
                  MobiscoreProject(),
                  DlwaqtyProject(),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}