import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:neumorphism/config/screen.dart';
import 'package:neumorphism/config/styles.dart';
import 'package:neumorphism/services/foods/foodServices.dart';
import 'package:neumorphism/view/product/prduct-detail.dart';

class urunListelemeWidget extends StatefulWidget {
  @override
  _urunListelemeWidgetState createState() => _urunListelemeWidgetState();
}

class _urunListelemeWidgetState extends State<urunListelemeWidget> {
  final FoodServices foodService = Get.put(FoodServices());
  @override
  void initState() {
    foodService.foodJsonGetir();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<FoodServices>(
      builder: (value) {
        //print(value);
        return ListView.separated(
          physics: ClampingScrollPhysics(),
          shrinkWrap: true,
          itemCount: value.myList.length,
          separatorBuilder: (BuildContext context, int index) {
            return Container(
              child: SizedBox(
                height: 30,
              ),
            );
          },
          itemBuilder: (context, index) {
            var list = value.myList[index];
            return Container(
              child: value.bilgi == GetPostEnum.Loading
                  ? CircularProgressIndicator()
                  : value.bilgi == GetPostEnum.Error
                      ? Text('Hata')
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: context.sizeW(.45),
                              height: context.sizeW(.45),
                              child: Stack(
                                //alignment: Alignment.topRight,
                                children: [
                                  Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Container(
                                      width: context.sizeW(.4),
                                      height: context.sizeW(.4),
                                      decoration: BoxDecoration(
                                        color: Colors.pink,
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(20),
                                        ),
                                        gradient: LinearGradient(
                                          begin: Alignment.topRight,
                                          end: Alignment.bottomLeft,
                                          stops: [0.1, 0.4, 0.5, 0.7, 0.9],
                                          colors: [
                                            Color(0xFFCCCCCC),
                                            Color(0xFFFFFFFF),
                                            Color(0xFFEEEEEE),
                                            Color(0xFFEEEEEE),
                                            Color(0xFFFFFFFF),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  /*  Align(
                                    alignment: Alignment.bottomLeft,
                                    child: MiktarBuild(),
                                  ),*/
                                  InkWell(
                                    onTap: () {
                                      Get.to(ProductDetailViewPage());
                                    },
                                    child: Align(
                                      alignment: Alignment.topRight,
                                      child: Container(
                                        width: context.sizeW(.4),
                                        height: context.sizeW(.4),
                                        child: Image.asset(
                                          list.image,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'money'.tr,
                                      style: Styles.yemekFiyat,
                                    ),
                                    Text(
                                      list.price,
                                      style: Styles.yemekFiyat,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: context.sizeW(.45),
                                  child: AutoSizeText(
                                    list.name,
                                    style: Styles.yemekAdiCart,
                                    maxLines: 2,
                                  ),
                                ),
                                Text(
                                  list.calori + ' kcal',
                                  style: Styles.yemekKaloriCart,
                                ),
                              ],
                            ),
                          ],
                        ),
            );
          },
        );
      },
    );
  }
}
