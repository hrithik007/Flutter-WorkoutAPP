import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:assets_audio_player/playable.dart';
import 'package:flutter/material.dart';
//import 'package:workout6/audio.dart';
//import 'package:workout6/poses.dart';
//import 'package:workout6/util/pose_data.dart';
//import 'package:workout6/scale_route.dart';

import 'Carousel 1.dart';
import 'Carousel 2.dart';
import 'Carousel.dart';

class MyHomePage extends StatelessWidget {
  
  final assetsAudioPlayer = AssetsAudioPlayer();
  @override
  Widget build(BuildContext context) {
    Container(
  decoration: BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment(0.8, 0.0), // 10% of the width, so there are ten blinds.
      colors: [const Color(0xFF81D4Fa), const Color(0xFF999999)], // whitish to gray
      tileMode: TileMode.repeated, // repeats the gradient over the canvas
    ),
  ),
);
    
    return Scaffold(
      
      
     // backgroundColor: LinearGradient(colors: 0xFF81D4Fa,0xFF4FC3F7),
      body: Column(children: <Widget>[
        Image.asset('assests/images/img2.png',height: 420, fit: BoxFit.cover,),
       // Beginner Button
              
              Padding(
                padding: const EdgeInsets.all(15),
                child: ButtonTheme(
                  minWidth: 200,
                  height: 60,
                  
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                    
                  ),
                  child: MaterialButton(
                    color: Colors.green,
                    
                    child: Text(
                      'Beginner',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                    AssetsAudioPlayer.newPlayer().open(Audio("assests/audios/joinedaudio.mp3"));
                    //assetsAudioPlayer.seek(Duration to(40));
                    //assetsAudioPlayer.seek(Duration(seconds: 40));
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => CarouselDemo()),
  );
}
                  ),
                ),
              ),

              // Intermediate Button
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: ButtonTheme(
                  minWidth: 200,
                  height: 60,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: MaterialButton(
                    color: Colors.blue,
                    child: Text(
                      'Intermediate',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        
                      ),
                    ),
                     onPressed: () {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => CarouselDemoo()),
  );
}
                  ),
                ),
              ),
              

              // Advance Button
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: ButtonTheme(
                  minWidth: 200,
                  height: 60,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: MaterialButton(
                    color: Colors.deepPurple,
                    child: Text(
                      'Advance',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                     onPressed: () {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => CarouselDemooo()),
  );
}
                  ),
                ),
              ),
      
      Center(
            child: MaterialButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => null ),);
              },
              color: Colors.orange,
              padding: EdgeInsets.symmetric(
                vertical: 15,
                horizontal: 50,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                'Login with Facebook',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          )
      ],),
      
    );
  }
  // void _onPoseSelect(
  //   BuildContext context,
  // ) async {
  //  Navigator.push(
  //                   context, 
  //                   MaterialPageRoute(
  //                     builder: (context) => CarouselDemo(),
  //                   ),
                    
  //   );
  // }
}