import 'package:flutter/material.dart';
import 'package:neumorphism/view/product/widget/product_list.dart';

class productViewPage extends StatefulWidget {
  @override
  _productViewPageState createState() => _productViewPageState();
}

class _productViewPageState extends State<productViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Text('urun listesi '),
          ),
          urunListelemeWidget(),
        ],
      ),
    );
  }
}
