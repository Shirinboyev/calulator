// import 'package:calulator/calculator.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController con1 = TextEditingController();
  TextEditingController con2 = TextEditingController();
  TextEditingController con3 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Row(
              children: [
                Container(
                  child: TextField(
                    controller: con1,
                  ),
                ),
                Container(
                  child: TextField(
                    controller: con2,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                ElevatedButton(onPressed: () {
          

                }, child: Text('Click me')),
              ],
            )
          ],
        ),
      ),
    );
  }
}
