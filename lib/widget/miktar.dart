import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:neumorphism/config/screen.dart';
import 'package:neumorphism/config/styles.dart';
import 'package:neumorphism/services/cart/addCart.dart';

class MiktarBuild extends StatelessWidget {
  const MiktarBuild({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var f = cartController();
    return Container(
      width: context.sizeW(.3),
      //height: 29,
      child: Obx(() {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              onTap: () {
                f.urunCikar(f.urunSayisi);
              },
              child: Text(
                '-',
                style: Styles.yemekSayiAzaltEksilCart,
              ),
            ),
            Text(
              f.urunSayisi.value.toString(),
              style: Styles.yemekSayiCart,
            ),
            InkWell(
              onTap: () {
                f.urunEkle(f.urunSayisi);
              },
              child: Text(
                '+',
                style: Styles.yemekSayiAzaltEksilCart,
              ),
            ),
          ],
        );
      }),
    );
  }
}
