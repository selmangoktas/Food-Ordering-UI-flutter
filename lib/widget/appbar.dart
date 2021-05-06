import 'package:flutter/material.dart';

class appBarToolWidget extends StatefulWidget {
  final String title;

  const appBarToolWidget({Key key, this.title}) : super(key: key);
  @override
  _appBarToolWidgetState createState() => _appBarToolWidgetState();
}

class _appBarToolWidgetState extends State<appBarToolWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
            ),
            width: 50,
            height: 50,
            child: Icon(Icons.arrow_left),
          ),
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
            ),
            width: 50,
            height: 50,
            child: Text(widget.title ?? 'My Producy'),
          ),
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
            ),
            width: 50,
            height: 50,
            child: Icon(Icons.arrow_left),
          )
        ],
      ),
    );
  }
}
