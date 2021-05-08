import 'package:flutter/material.dart';
import 'package:neumorphism/config/screen.dart';
import 'package:neumorphism/model/food.dart';
import 'package:neumorphism/widget/appbar.dart';
import 'package:neumorphism/widget/ratingStar.dart';

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
        child: appBarToolWidget(),
      ),
      body: Container(
        margin: EdgeInsets.all(8),
        child: Column(
          children: [
            Container(
              child: Align(
                alignment: Alignment.center,
                child: Container(
                  width: context.sizeW(.4),
                  height: context.sizeW(.4),
                  child: Image.asset(
                    'assets/foods/Asparagus.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('4,8'),
                    Text('2023 reviews'),
                    buildRatingStars(3),
                  ],
                ),
                Icon(Icons.favorite)
              ],
            ),
            Container(
              child: Column(
                children: [
                  Text('Yemek Başloıkk'),
                  Text(
                      'alt baslık tanımlama alt baslık tanımlama alt baslık tanımlama alt baslık tanımlama alt baslık tanımlama alt baslık tanımlama alt baslık tanımlama alt baslık tanımlama alt baslık tanımlama alt baslık tanımlama'),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        width: context.sizeW(1),
        height: context.sizeH(.3),
        margin: EdgeInsets.only(bottom: 1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('data'),
            ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: false,
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  color: Colors.pink,
                  alignment: Alignment.center,
                  width: 50,
                  height: 50,
                  child: Image.asset(
                    'assets/foods/Asparagus.png',
                    fit: BoxFit.cover,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
