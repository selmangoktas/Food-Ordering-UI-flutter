import 'package:flutter/material.dart';
import 'package:neumorphism/widget/appbar.dart';
import 'package:neumorphism/widget/bottombar.dart';

class pageControllerViewPage extends StatefulWidget {
  pageControllerViewPage({Key key}) : super(key: key);

  @override
  _pageControllerViewPageState createState() => _pageControllerViewPageState();
}

class _pageControllerViewPageState extends State<pageControllerViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: appBarToolWidget(),
      ),
      body: Container(
        child: Text(''),
      ),
      bottomNavigationBar: bottomBarToolWidget(),
    );
  }
}
