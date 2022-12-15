import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int scale = 0;
  int scole = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Container(
            color: Colors.white,
            child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [  
            
            Center(
              child: TextButton(
                onPressed: () {
                  scale++;
                  setState(() {});
                },
                child: Text(
                  '<',
                  style: TextStyle(fontSize: 30, color: Colors.red),
                ),
              ),
            ),
         if (scale == 0)
              Container(
                child: Image.asset('images/sami.png'),
              ),  if (scale == 1)
              Container(
                child: Image.asset('images/yusuf.png',scale: 2,),
              ), if (scale == -1)
              Container(
                child: Image.asset('images/img.png',scale: 5,),
              ),if (scale == -2)
              Container(
                child: Image.asset('images/red.png',scale: 8,),
              ),if (scale == 2)
              Container(
                child: Image.asset('images/dub.png',scale: 5,),
              ),if (scale == 3)
              Container(
                child: Image.asset('images/oy.png',scale: 8,),
              ),if (scale == -3)
              Container(
                child: Image.asset('images/nat.png',scale: 1,),
              ),if (scale == 4)
              Container(
                child: Image.asset('images/nature.png',scale: 5,),
              ),if (scale == -4)
              Container(
                child: Image.asset('images/dar.png',scale: 5,),
              ),
            Center(
              child: TextButton(
                onPressed: () {
                  scale--;
                  setState(() {});
                },
                child: Text(
                  '>',
                  style: TextStyle(fontSize: 30, color: Colors.red),
                ),
              ),
            ),
            // Text(
            //   'Score $scale',
            //   style: TextStyle(fontSize: 30),
            // ),
       
        ],
      ),
          )),
    );
  }
}