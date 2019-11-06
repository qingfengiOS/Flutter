import 'package:flutter/material.dart';

void main() => runApp(MyApp("Hello World"));

/**
 * 1、继承tatelessWidget
 * 2、实现build函数，返回一个widget 
 *  */
class MyApp extends StatelessWidget {
  final String content;

  MyApp(this.content);

  @override
  Widget build(BuildContext context){
    print('build');
    return MaterialApp(
      title: 'Demo',
      theme: ThemeData(
        primaryColor: Colors.green,
      ),

      home: Scaffold(
        body: Center(
          child: Text(content),
        ),
      ),
    );
  }
}

/**
 * StatelessWidget 是没有 State（状态）的，而且 StatelessWidget 只能在加载/构建 Widget 时才绘制一次，这意味着无法基于任何事件或用户操作重绘 StatelessWidget，所以 StatelessWidget 是 immutable 的。
 *
 * StatelessWidget 的生命周期就只有一个，即 build 函数
 *  */