import 'package:flutter/material.dart';

import 'package:neumorphism/model/food.dart';
import 'package:neumorphism/view/product/widget/bottom.dart';
import 'package:neumorphism/view/product/widget/urunDetay.dart';
import 'package:neumorphism/widget/appbar.dart';

foodModel x = foodModel();

class ProductDetailViewPage extends StatefulWidget {
  
  @override
  _ProductDetailViewPageState createState() => _ProductDetailViewPageState();
}

class _ProductDetailViewPageState extends State<ProductDetailViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: appBarToolWidget(
          title: 'addCart',
        ),
      ),
      body: getUrunDetayBody(context),
      bottomNavigationBar: getBottomBar(context),
    );
  }

 

 
}
