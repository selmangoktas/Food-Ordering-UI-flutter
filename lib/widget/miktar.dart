import 'package:flutter/material.dart';
import 'package:neumorphism/config/screen.dart';
import 'package:neumorphism/config/styles.dart';

class MiktarBuild extends StatelessWidget {
  const MiktarBuild({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.sizeW(.3),
      //height: 29,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            '-',
            style: Styles.yemekSayiAzaltEksilCart,
          ),
          Text(
            '2',
            style: Styles.yemekSayiCart,
          ),
          Text(
            '+',
            style: Styles.yemekSayiAzaltEksilCart,
          ),
        ],
      ),
    );
  }
}
