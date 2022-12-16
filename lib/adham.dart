import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Mycalc extends StatefulWidget {
  const Mycalc({Key? key}) : super(key: key);

  @override
  State<Mycalc> createState() => _MycalcState();
}

class _MycalcState extends State<Mycalc> {
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  TextEditingController controller3 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: 300,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    controller: controller1,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        filled: true,
                        // enabled: false,
                        fillColor: Colors.red),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 35, bottom: 35),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    '%',
                    style: TextStyle(fontSize: 60),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: 300,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        filled: true,
                        fillColor: Colors.green),
                    controller: controller2,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 35, bottom: 35),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        num ans = int.parse(controller1.text) /
                            100 *
                            int.parse(controller2.text);
                        setState(() {
                          controller3.text = ans.toString();
                        });
                      },
                      child: Text(
                        'Calculate',
                        style: TextStyle(fontSize: 30),
                      )),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  width: 300,
                  child: TextField(
                    readOnly: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        filled: true,
                        fillColor: Colors.blue),
                    controller: controller3,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Mycalc(),
  ));
}

