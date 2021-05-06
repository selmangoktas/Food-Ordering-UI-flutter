import 'package:flutter/material.dart';
import 'package:neumorphism/view/product/widget/product_list.dart';

class productViewPage extends StatefulWidget {
  @override
  _productViewPageState createState() => _productViewPageState();
}

class _productViewPageState extends State<productViewPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Text('urun listesi '),
        ),
        Container(
          child: urunListelemWidget(),
        )
      ],
    );
  }
}
