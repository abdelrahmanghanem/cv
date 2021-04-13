// import 'package:carousel_slider/carousel_options.dart';
// import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

final List<String> imgList = [
  "assets/elahwa/1.png",
  "assets/elahwa/2.png",
  "assets/elahwa/3.png",
  "assets/elahwa/4.png",
  "assets/elahwa/5.png",
  "assets/elahwa/6.png",
  "assets/elahwa/7.png",
  "assets/elahwa/8.png",
  "assets/elahwa/9.png",


];

class AlahwaProject extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AlahwaProjectState();
  }
}

class _AlahwaProjectState extends State<AlahwaProject> {
  int _current = 0;
  final List<Widget> imageSliders = imgList.map((item) => Container(
    child: Container(
      margin: EdgeInsets.all(2.0),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(15.0)),
        child:
        Image.asset(item, fit: BoxFit.fill ,width: double.infinity,),

      ),
    ),
  )).toList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text('Carousel with indicator demo')),
      body: Column(
          children: [
            CarouselSlider(
              items: imageSliders,
              options: CarouselOptions(

                  viewportFraction: 0.9,

                  height:MediaQuery.of(context).size.height*0.74,
                  autoPlay: true,
                  enlargeCenterPage: true,
                  aspectRatio: 1.0,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  }
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: imgList.map((url) {
                    int index = imgList.indexOf(url);
                    return Container(
                      width: 8.0,
                      height: 8.0,
                      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _current == index
                            ? Color.fromRGBO(0, 0, 0, 0.9)
                            : Color.fromRGBO(0, 0, 0, 0.4),
                      ),
                    );
                  }).toList(),
                ),
              ],
            ),
          ]
      ),
    );
  }
}


