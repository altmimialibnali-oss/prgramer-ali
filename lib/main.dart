import 'package:flutter/material.dart';

// Entry point of the application
void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  int s = 0;
  int s1 = 0;
  int s2 = 0;
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("مسبحة الاكترونية "),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Center(
                child: Container(
                  width: 200,
                  height: 100,
                  child: Column(
                    children: [
                      Text("سبحان الله"),
                      Text("$s"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                if (s < 33) {
                                  s = s + 1;
                                } else {
                                  s = 0;
                                }
                              });
                            },
                            child: Text("+"),
                          ),
                          SizedBox(width: 10),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                s = 0;
                              });
                            },
                            child: Text("Reset"),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Center(
                child: Container(
                  width: 200,
                  height: 100,
                  child: Column(
                    children: [
                      Text("الحمد لله"),
                      Text("$s1"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                if (s1 < 33) {
                                  s1 = s1 + 1;
                                } else {
                                  s1 = 0;
                                }
                              });
                            },
                            child: Text("+"),
                          ),
                          SizedBox(width: 10),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                s1 = 0;
                              });
                            },
                            child: Text("Reset"),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Container(
                  width: 200,
                  height: 100,
                  child: Column(
                    children: [
                      Text("الله اكبر "),
                      Text("$s2"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                if (s2 < 33) {
                                  s2 = s2 + 1;
                                } else {
                                  s2 = 0;
                                }
                              });
                            },
                            child: Text("+"),
                          ),
                          SizedBox(width: 10),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                s2 = 0;
                              });
                            },
                            child: Text("Reset"),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
