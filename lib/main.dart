// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyText());
// }

// class MyText extends StatefulWidget {
//   const MyText({Key? key}) : super(key: key);

//   @override
//   State<MyText> createState() => _MyTextState();
// }

// class _MyTextState extends State<MyText> {
//   TextEditingController _controller = TextEditingController();
//   String txt = '';
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Center(
//           child: Container(
//             color: Color.fromARGB(255, 238, 234, 234),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Row(
//                   children: [
//                     Expanded(
//                       child: Container(
//                         child: TextField(
//                           decoration: InputDecoration(
//                             filled: true,
//                             fillColor: Colors.white,
//                             border: OutlineInputBorder(),
//                           ),
//                           controller: _controller,
//                         ),
//                       ),
//                     ),
//                     Expanded(
//                       child: Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: TextField(
//                           decoration: InputDecoration(
//                               border: OutlineInputBorder(),
//                               filled: true,
//                               fillColor: Colors.white),
//                           controller: _controller,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(top: 30, bottom: 30),
//                   child: Container(
//                       width: 400,
//                       height: 50,
//                       color: Color.fromARGB(255, 213, 210, 210),
//                       child: Center(child: Text(txt))),
//                 ),
//                 ElevatedButton(
//                     onPressed: () {
//                       setState(() {
//                         txt = _controller.text;
//                       });
//                     },
//                     child: Text('+')),
//                 Padding(
//                   padding: const EdgeInsets.all(30),
//                   child: ElevatedButton(
//                       onPressed: () {
//                         setState(() {
//                           txt = _controller.text;
//                         });
//                       },
//                       child: Text('-')),
//                 ),
//                 ElevatedButton(
//                     onPressed: () {
//                       setState(() {
//                         txt = _controller.text;
//                       });
//                     },
//                     child: Text('*')),
//                 Padding(
//                   padding: const EdgeInsets.all(30),
//                   child: ElevatedButton(
//                       onPressed: () {
//                         setState(() {
//                           txt = _controller.text;
//                         });
//                       },
//                       child: Text('/')),
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

void main() {
  runApp(MyWidget());
}

class MyWidget extends StatefulWidget {
  MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  TextEditingController controller3 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
            child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(30),
                        child: TextField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.red,
                              border: OutlineInputBorder(),
                            ),
                            controller: controller1),
                      )),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(30),
                      child: TextField(
                          controller: controller2,
                          decoration: InputDecoration(filled: true,
                              fillColor: Colors.red,
                            border: OutlineInputBorder(),
                          )),
                    ),
                  )
                ],
              ),
              TextField(controller: controller3,  decoration: InputDecoration(filled: true,
                              fillColor: Colors.red,
                            border: OutlineInputBorder(),
                          )),
              ElevatedButton(
                onPressed: () {
                  int ans =
                      int.parse(controller1.text) + int.parse(controller2.text);
                  setState(() {
                    controller3.text = ans.toString();
                  });
                },
                child: Text('+'),
              ),
              ElevatedButton(
                onPressed: () {
                  int ans =
                      int.parse(controller1.text) - int.parse(controller2.text);
                  setState(() {
                    controller3.text = ans.toString();
                  });
                },
                child: Text('-'),
              ),
              ElevatedButton(
                onPressed: () {
                  int ans =
                      int.parse(controller1.text) * int.parse(controller2.text);
                  setState(() {
                    controller3.text = ans.toString();
                  });
                },
                child: Text('*'),
              ),
              ElevatedButton(
                onPressed: () {
                  int ans = int.parse(controller1.text) ~/
                      int.parse(controller2.text);
                  setState(() {
                    controller3.text = ans.toString();
                  });
                },
                child: Text('/'),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
