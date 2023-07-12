import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SecondPage(),
    );
  }
}

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _HomePageState();
}

class _HomePageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("AppBar - Title"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 300.0,
              alignment: Alignment.topRight,
              color: Colors.yellow,
              child: Container(
                width: 200.0,
                height: 200.0,
                alignment: const Alignment(1, -1),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.amberAccent,
                  border: Border.all(
                    width: 40,
                    color: Colors.orange,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              height: 300.0,
              width: 300.0,
              alignment: Alignment.topRight,
              color: Color.fromARGB(255, 138, 229, 141),
              child: Container(
                width: 300.0,
                height: 300.0,
                decoration: const BoxDecoration(
                  gradient: RadialGradient(
                    center: Alignment(0.75, -0.75),
                    radius: 0.80,
                    stops: [
                      0.6,
                      0.6,
                      0.8,
                      0.8,
                    ],
                    colors: [
                      Color.fromARGB(255, 1, 160, 6),
                      Colors.green,
                      Colors.green,
                      Color.fromARGB(255, 138, 229, 141),
                    ],
                  ),
                  //shape: BoxShape.circle,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Center(
              child: ClipRect(
                child: Align(
                  alignment: Alignment.topCenter,
                  heightFactor: 0.5,
                  child: Container(
                    height: 120,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.green,
                      gradient: SweepGradient(
                        colors: [
                          Colors.green,
                          Colors.green,
                          Colors.green,
                          Colors.grey,
                        ],
                        stops: [
                          .2,
                          .2,
                          .2,
                          .2,
                        ],
                        startAngle: 3.14,
                      ),
                    ),
                    child: Container(
                      margin: EdgeInsets.all(12),
                      height: 120,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        border: Border.all(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5),
            child: Container(
              height: 120,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.green,
                gradient: SweepGradient(
                  colors: [
                    Colors.green,
                    Colors.grey,
                  ],
                  stops: [
                    .1,
                    .1,
                  ],
                  startAngle: 3.14,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              height: 300.0,
              alignment: Alignment.topRight,
              color: Colors.blue,
              child: Container(
                width: 200.0,
                height: 200.0,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    stops: [0.1, 0.8],
                    colors: [Colors.yellow, Colors.orange],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              height: 300.0,
              alignment: Alignment.topRight,
              color: Colors.orange,
              child: Container(
                width: 200.0,
                height: 200.0,
                decoration: const BoxDecoration(
                  gradient: SweepGradient(
                    center: Alignment.topRight,
                    startAngle: 0,
                    endAngle: 3,
                    stops: [0.1, 0.5, 1.8],
                    colors: [Colors.yellow, Colors.amberAccent, Colors.orange],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
