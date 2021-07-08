import 'package:android_scrolling_issue/asset_card.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Android scrolling issue',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Home'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        separatorBuilder: (context, index) => Divider(height: 1),
        itemCount: 500,
        itemBuilder: (context, index) {
          return AssetCard(index.toString(), index.toString(), '', index);
          /* return Container(
            padding: EdgeInsets.all(24),
            child: Text(index.toString()),
          ); */
        },
      ),
    );
  }
}
