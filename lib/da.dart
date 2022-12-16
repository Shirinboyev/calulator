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
  TextEditingController controller4 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
            child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
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
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.red,
                            border: OutlineInputBorder(),
                          )),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 45, right: 45),
                child: TextField(
                    controller: controller3,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.red,
                      border: OutlineInputBorder(),
                    )),
              ),
              SizedBox(
                width: 20,
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                int ans = int.parse(controller1.text) +
                                    int.parse(controller2.text);
                                setState(() {
                                  controller3.text = ans.toString();
                                });
                              },
                              child: Text(
                                'AS',
                                style: TextStyle(fontSize: 30),
                              ),
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(100))),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                int ans = int.parse(controller1.text);
                                int.parse(controller2.text);
                                setState(() {
                                  controller3.text = ans.toString();
                                });
                              },
                              child: Text(
                                '-/+',
                                style: TextStyle(fontSize: 30),
                              ),
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(100))),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                int ans = int.parse(controller1.text) *
                                    int.parse(controller2.text);
                                setState(() {
                                  controller3.text = ans.toString();
                                });
                              },
                              child: Icon(Icons.backspace_rounded),
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(100))),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                int ans = int.parse(controller1.text) ~/
                                    int.parse(controller2.text);
                                setState(() {
                                  controller3.text = ans.toString();
                                });
                              },
                              child: Text(
                                '/',
                                style: TextStyle(fontSize: 30),
                              ),
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(100))),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                int ans = int.parse(controller4.text) +
                                    int.parse(controller2.text);
                                setState(() {
                                  controller3.text = ans.toString();
                                });
                              },
                              child: Text(
                                '1',
                                style: TextStyle(fontSize: 30),
                              ),
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(100))),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                int ans = int.parse(controller1.text) -
                                    int.parse(controller2.text);
                                setState(() {
                                  controller3.text = ans.toString();
                                });
                              },
                              child: Text(
                                '2',
                                style: TextStyle(fontSize: 30),
                              ),
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(100))),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                int ans = int.parse(controller1.text) *
                                    int.parse(controller2.text);
                                setState(() {
                                  controller3.text = ans.toString();
                                });
                              },
                              child: Text(
                                '3',
                                style: TextStyle(fontSize: 30),
                              ),
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(100))),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                int ans = int.parse(controller1.text) +
                                    int.parse(controller2.text);
                                setState(() {
                                  controller3.text = ans.toString();
                                });
                              },
                              child: Text(
                                '+',
                                style: TextStyle(fontSize: 30),
                              ),
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(100))),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                int ans = int.parse(controller1.text) +
                                    int.parse(controller2.text);
                                setState(() {
                                  controller3.text = ans.toString();
                                });
                              },
                              child: Text(
                                '4',
                                style: TextStyle(fontSize: 30),
                              ),
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(100))),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                int ans = int.parse(controller1.text) -
                                    int.parse(controller2.text);
                                setState(() {
                                  controller3.text = ans.toString();
                                });
                              },
                              child: Text(
                                '5',
                                style: TextStyle(fontSize: 30),
                              ),
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(100))),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                int ans = int.parse(controller1.text) *
                                    int.parse(controller2.text);
                                setState(() {
                                  controller3.text = ans.toString();
                                });
                              },
                              child: Text(
                                '6',
                                style: TextStyle(fontSize: 30),
                              ),
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(100))),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                int ans = int.parse(controller1.text) -
                                    int.parse(controller2.text);
                                setState(() {
                                  controller3.text = ans.toString();
                                });
                              },
                              child: Text(
                                '-',
                                style: TextStyle(fontSize: 30),
                              ),
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(100))),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                int ans = int.parse(controller1.text) +
                                    int.parse(controller2.text);
                                setState(() {
                                  controller3.text = ans.toString();
                                });
                              },
                              child: Text(
                                '7',
                                style: TextStyle(fontSize: 30),
                              ),
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(100))),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                int ans = int.parse(controller1.text) -
                                    int.parse(controller2.text);
                                setState(() {
                                  controller3.text = ans.toString();
                                });
                              },
                              child: Text(
                                '8',
                                style: TextStyle(fontSize: 30),
                              ),
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(100))),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                int ans = 9;
                                int.parse(controller1.text) + 9;
                                int.parse(controller2.text);
                                setState(() {
                                  controller3.text = ans.toString();
                                });
                              },
                              child: Text(
                                '9',
                                style: TextStyle(fontSize: 30),
                              ),
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(100))),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                int ans = int.parse(controller1.text) *
                                    int.parse(controller2.text);
                                setState(() {
                                  controller3.text = ans.toString();
                                });
                              },
                              child: Text(
                                '*',
                                style: TextStyle(fontSize: 30),
                              ),
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(100))),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                int ans = int.parse(controller1.text) +
                                    int.parse(controller2.text);
                                setState(() {
                                  controller3.text = ans.toString();
                                });
                              },
                              child: Text(
                                '0',
                                style: TextStyle(fontSize: 30),
                              ),
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(100))),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                int ans = int.parse(controller1.text) -
                                    int.parse(controller2.text);
                                setState(() {
                                  controller3.text = ans.toString();
                                });
                              },
                              child: Text(
                                '8',
                                style: TextStyle(fontSize: 30),
                              ),
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(100))),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                int ans = 9;
                                int.parse(controller1.text) + 9;
                                int.parse(controller2.text);
                                setState(() {
                                  controller3.text = ans.toString();
                                });
                              },
                              child: Text(
                                '.',
                                style: TextStyle(fontSize: 30),
                              ),
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(100))),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                int ans = int.parse(controller1.text) *
                                    int.parse(controller2.text);
                                setState(() {
                                  controller3.text = ans.toString();
                                });
                              },
                              child: Text(
                                '=',
                                style: TextStyle(fontSize: 30),
                              ),
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(100))),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
