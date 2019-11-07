import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  //rootWidget
  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      // home: Center(
      //   child: Text("Hello World"),
      // ),
      theme: ThemeData(
        primaryColor: Colors.red,
      ),
      home: Scaffold(
        appBar: new AppBar(
        title: new Text("scaffold title"),
      ),
      backgroundColor: Colors.orange,
        body: Center(
          child: Text("Hello World"),
        ),
      ),
    );
  }
}

/*
Scaffold 实现了 Material Design 的基本布局结构，例如 AppBar、Drawer、SnackBar 等，所以为了使用这些布局，也必须要使用 Scaffold，所以一个 Flutter App 的 基本结构就是：Root Widget 是 MaterialApp ，然后 MaterialApp 的 子Widget 就是 Scaffold，然后我们在 Scaffolfd 的 子Widget 里写UI。

Scaffold 是实现 Material Design 基本视觉布局结构的 Widget,它被设计为 MaterialApp 的顶级容器，会自动填满屏幕，而且会自动适配不同的屏幕，例如刘海屏等。
*/

/*
上面代码中的theme,home都是MaterialApp的一些属性

theme: ThemeData类型,设置Flutter App的主题，比如颜色、字体等
home: Widget 类型,进入程序后显示的第一个页面，必须是 Scaffold
*/