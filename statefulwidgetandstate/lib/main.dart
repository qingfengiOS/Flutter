import 'package:flutter/material.dart';

void main() => runApp(MyApp("Hello world"));

class MyApp extends StatefulWidget {
  String content;

  MyApp(this.content);

  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  bool isShowText = true;
    void increment() {
      setState(() {
        widget.content += "d";
      });
    }

  @override 
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text("Widget -- StatefulWidget及State")),
        body: Center(
          child: GestureDetector(
            child: isShowText ? Text(widget.content) : null,
            onTap: increment,
          ),
        ),
      ),
    );
  }
}