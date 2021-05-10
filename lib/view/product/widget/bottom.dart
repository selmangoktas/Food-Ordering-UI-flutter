 import 'package:flutter/material.dart';
import 'package:neumorphism/config/colors.dart';
 import 'package:neumorphism/config/screen.dart';
import 'package:neumorphism/config/styles.dart';
import 'package:neumorphism/widget/miktar.dart';
import 'package:get/get.dart';

Container getBottomBar(BuildContext context) {
    return Container(
      width: context.sizeW(1),
      height: context.sizeH(.3),
      margin: EdgeInsets.only(bottom: 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('data'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(4, (index) {
              return index == 0 || index == 1
                  ? Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 10),
                          decoration: BoxDecoration(),
                          alignment: Alignment.center,
                          width: context.sizeW(.25),
                          height: context.sizeH(.1),
                          child: Image.asset(
                            'assets/foods/Asparagus.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text(
                          '2300 Kcal',
                          style: Styles.yemekKaloriCart,
                        )
                      ],
                    )
                  : Container(
                      margin: EdgeInsets.only(bottom: 10, right: 5),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              color: Colors.black12,
                              blurRadius: 4.0,
                              offset: Offset(0.75, 0.10))
                        ],
                        color: Colors.white30,
                      ),
                      width: context.sizeW(.20),
                      height: 75,
                      child: Text(
                        '+',
                        style: Styles.yemekSayiCart,
                      ));
            }),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Align(
                alignment: Alignment.bottomLeft,
                child: MiktarBuild(),
              ),
              Container(
                width: context.sizeW(.5),
                height: context.sizeH(.1),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: primary,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(context.sizeW(.1)),
                      bottomRight: Radius.circular(context.sizeW(.1)),
                    )),
                child: Text(
                  'addCart'.tr,
                  style: Styles.buttonTextStyle,
                ),
              ),
              //Text('title'.tr ?? 'My Producy'),
            ],
          ),
        ],
      ),
    );
  }