import 'package:flutter/material.dart';
import 'package:flutter_application_03/screen/display.dart';
import 'package:flutter_application_03/screen/formscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page1'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: TabBarView(
          children: [
            FormScreen(),
            DisplayScreen()
          ]
          ),
          backgroundColor: Colors.orange,
          bottomNavigationBar: TabBar(
            tabs: [
              Tab(text: "บันทึกการออม",),
              Tab(text: "รายการ",)
            ],
            ),
      ),
      );
  }
}
