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
                        padding: const EdgeInsets.only(right: 100,left: 100,bottom: 30),
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
                      padding: const EdgeInsets.only(right: 100,left: 100,bottom: 30),
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
              Padding(
                padding: const EdgeInsets.only(left: 100,right: 100),
                child: TextField(controller: controller3,  decoration: InputDecoration(filled: true,
                                fillColor: Colors.red,
                              border: OutlineInputBorder(),
                            )),
              ),
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
              ),    ElevatedButton(
                onPressed: () {
                  int ans = 1;
                  setState(() {
                    controller1.text= controller2.text= ans.toString();
                  });
                },
                child: Text('1'),
              ), ElevatedButton(
                onPressed: () {
                  int ans = 2;
                  setState(() {
                    controller1.text = controller1.text= ans.toString();
                  });
                },
                child: Text('2'),
              ),
            ],
          ),
        )),
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Calculator(),
//     );
//   }
// }

// class Calculator extends StatefulWidget {
//   const Calculator({super.key});

//   @override
//   State<Calculator> createState() => _CalculatorState();
// }

// class _CalculatorState extends State<Calculator> {
//   Widget calcbutton(String btntxt,Color btncolor,Color txtcolor){
//     return Container(
      
      
      
//       );
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.amber,
//       appBar: AppBar(
//         title: Text('Calculator'),
//         backgroundColor: Colors.red,
//       ),
//       body: Padding(
//         padding: EdgeInsets.symmetric(horizontal: 5),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.end,
//           children: [
          
//             Row(
//               mainAxisAlignment: MainAxisAlignment.end,
//               children: [
//                 Padding(
//                   padding: EdgeInsets.all(10),
//                   child: Text(
//                     'O',
//                     textAlign: TextAlign.left,
//                     style: TextStyle(color: Colors.white, fontSize: 100),
//                   ),
//                 ),
//               ],
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [calcbutton('AC', Colors.black, Colors.red)],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

