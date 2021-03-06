import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';





class CarouselDemoo extends StatefulWidget {
  CarouselDemoo() : super();
 
  final String title = "Intermediate";
 
  @override
  CarouselDemooState createState() => CarouselDemooState();
}
 
class CarouselDemooState extends State<CarouselDemoo> {
  //
  CarouselSlider carouselSlider;
  int _current = 0;
  List imgList = [
    "https://www.sparkpeople.com/assets/exercises/Runners-Lunges.gifMaterial",
    'https://www.sparkpeople.com/news/genericpictures/Squats.gif',
    'https://fitbottomedgirls.com/wp-content/uploads/2016/12/Pushups.gif',
    'http://www.sparkpeople.com/assets/exercises/Mountain-Climbers.gif',
    'http://www.sparkpeople.com/assets/exercises/Burpees.gif'
  ];
   List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }
 
  @override
  Widget build(BuildContext context) {
 //   int i2 = 0;
        return Scaffold(
          appBar: AppBar(
            title: Text(widget.title),
          ),
          //body: Container(
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                carouselSlider = CarouselSlider(
                  height: 400.0,
              initialPage: 0,
              enlargeCenterPage: true,
              autoPlay: true,
              reverse: false,
              enableInfiniteScroll: true,
              autoPlayInterval: Duration(seconds: 40),
              autoPlayAnimationDuration: Duration(milliseconds: 2000),
              pauseAutoPlayOnTouch: Duration(seconds: 5),
                  scrollDirection: Axis.horizontal,
                  onPageChanged: (index) {
                    setState(() {
                      _current = index;
                    });
                  },
                  items: imgList.map((imgUrl) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(horizontal: 10.0),
                          decoration: BoxDecoration(
                            color: Colors.green,
                          ),
                          child: Image.network(
                            imgUrl,
                            fit: BoxFit.fill,
                          ),
                        );
                      },
                    );
                  }).toList(),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: map<Widget>(imgList, (index, url) {
                    return Container(
                      width: 10.0,
                      height: 10.0,
                      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _current == index ? Colors.redAccent : Colors.green,
                      ),
                    );
                  }),
                ),
    
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ButtonTheme(
                      minWidth: 50,
                      height: 50,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: MaterialButton(
                        color: Colors.green,
                        child: Text(
                          '<',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                        onPressed: goToPrevious,
                        ),
                      ),
                    ),
    
     Padding(
       
                    padding: const EdgeInsets.all(10.0),
                    child: ButtonTheme(
                      minWidth: 100,
                      height: 50,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: MaterialButton(
                        color: Colors.green,
                        child: Text(
                          'SET',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                        
                    onPressed: goToSet,
                    
                    ),
                  ),
                ),


                 Padding(
                padding: const EdgeInsets.all(10.0),
                child: ButtonTheme(
                  minWidth: 50,
                  height: 50,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: MaterialButton(
                    color: Colors.green,
                    child: Text(
                      '>',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: goToNext,
                    
                    ),
                  ),
                ),

              ],
                ),
          ],
        ),
    );
  }
 
  goToPrevious() {
    carouselSlider.previousPage(
        duration: Duration(milliseconds: 300), curve: Curves.ease);
  }
 
  goToNext() {
    carouselSlider.nextPage(
        duration: Duration(milliseconds: 300), curve: Curves.decelerate);
  }
  
   goToSet() {
    int i2 = 0;
             return null;
   }
}