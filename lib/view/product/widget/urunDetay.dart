 import 'package:flutter/material.dart';
import 'package:neumorphism/config/styles.dart';
import 'package:neumorphism/widget/ratingStar.dart';
import 'package:neumorphism/config/screen.dart';

Container getUrunDetayBody(BuildContext context) {
    return Container(
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '4,8',
                    style: Styles.puanSayisi,
                  ),
                  Text('2023 reviews', style: Styles.yorumSayisi),
                  buildRatingStars(3),
                ],
              ),
              Container(
                child: Icon(
                  Icons.favorite,
                  color: Colors.redAccent[700],
                  size: 45,
                ),
              )
            ],
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Yemek Başloıkk',
                  style: Styles.yemekAdi,
                  textAlign: TextAlign.justify,
                ),
                Text(
                  'alt baslık tanımlama alt baslık tanımlama alt baslık tanımlama alt baslık tanımlama alt baslık tanımlama alt baslık tanımlama alt baslık tanımlama alt baslık tanımlama alt baslık tanımlama alt baslık tanımlama',
                  style: Styles.yemekAciklama,
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }