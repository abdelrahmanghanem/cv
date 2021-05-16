import 'package:cv/shared/style.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
// import 'package:url_launcher/url_launcher.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: color0,
        title: Text("Profile"),
      ),
      backgroundColor: color0,
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 15,horizontal: 23),
            decoration: BoxDecoration(
                color: color1,
              borderRadius: BorderRadius.circular(10)
            ),

            child: Column(
              children: [
                Container(
                  width: width *0.5,
                  height: height*0.21,
                  margin: EdgeInsets.only(top: 40),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                  ),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset("assets/image/body.png",fit: BoxFit.contain,)),
                ),
                Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Text("Abdelrahman Ghanem",style: sName,)
                ),
                Container(
                  width: width*0.4,
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.only(top: 15),
                  decoration: BoxDecoration(
                    color: color0,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(child: Text("Flutter Developer",style:s1,)),
                ),


                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              child: Container(
                                width: 28,
                                height: 28,
                                child: Image.asset("assets/icon/facebook.png",),),
                              onTap: (){
                                _launchInBrowser("https://www.facebook.com/profile.php?id=100007357995450");
                              },
                            ),
                            InkWell(
                              child: Container(
                                margin: EdgeInsets.symmetric(horizontal: 20),
                                width: 28,
                                height: 28,
                                child: Image.asset("assets/icon/github.png",),),
                              onTap: (){
                                _launchInBrowser("https://github.com/abdelrahmanghanem");
                              },
                            ),
                            InkWell(
                              child: Container(
                                width: 28,
                                height: 28,
                                child: Image.asset("assets/icon/linkedin (1).png",),),
                              onTap: (){
                                _launchInBrowser("https://www.linkedin.com/in/abdelrahman-ghanem-32947313b");
                              },
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: height*0.03,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 20,top: 10),
                            decoration:  BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  width: 18,
                                  height: 18,
                                  child: Image.asset("assets/icon/calendar.png",),),
                                Container(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Text("March 10 ,1996",style:s1,)
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 20,top: 15),
                            decoration:  BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  width: 18,
                                  height: 18,
                                  child: Image.asset("assets/icon/location.png",),),
                                Container(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Text("New Cairo, Cairo",style:s1,)
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 20,top: 15),

                            decoration:  BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  width: 18,
                                  height: 18,
                                  child: Image.asset("assets/icon/mail.png",),),
                                Container(
                                    padding: EdgeInsets.only(left: 10),
                                    child: SelectableText("abdelrahman.ghanem.atya@gmail.com",style:TextStyle(fontSize: 15,color: white))
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 20,top: 15),
                            decoration:  BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  width: 18,
                                  height: 18,
                                  child: Image.asset("assets/icon/phone-call.png",),),
                                Container(
                                    padding: EdgeInsets.only(left: 10),
                                    child: SelectableText("01011118203",style: s1,
                                    )
                                )
                              ],
                            ),
                          ),
                        ],
                      )

                    ],
                  ),
                ),
                Container(
                  width: width*0.5,
                  padding: EdgeInsets.all(15),
                  margin: EdgeInsets.only(bottom: 15),
                  decoration:  BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.save_alt_rounded,color: Colors.white,),
                      Container(
                          padding: EdgeInsets.only(left: 10),
                          child: Text("Download CV",style: s1,)
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Future<void> _launchInBrowser(String url) async {
  if (await canLaunch(url)) {
    await launch(
      url,
      forceSafariVC: false,
      forceWebView: false,
      headers: <String, String>{'my_header_key': 'my_header_value'},
    );
  } else {
    throw 'Could not launch $url';
  }
}