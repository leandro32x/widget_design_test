import 'package:flutter/material.dart';
import 'widgets/course_card.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        backgroundColor: Color(0xFFE7EEFB),
        body: SafeArea(
          child: MyHomePage(),
        ),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CourseCard(
            courseIcon: Icons.play_arrow,
            courseTittle: 'Flutter for Designer',
            courseVectorAsset: 'assets/undraw_flutter_dev_wvqj.svg',
            numOfSections: 12,
          ),
        ],
      ),
    );
  }
}
