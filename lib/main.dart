import 'package:flutter/material.dart';
import 'package:workout6/home.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
     //   primaryColor: new Color(0xFF81D4Fa),
   //     primaryColor: new Color.[const Color(0xFF81D4Fa), const Color(0xFF999999)],
      ),
       debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}



  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  
