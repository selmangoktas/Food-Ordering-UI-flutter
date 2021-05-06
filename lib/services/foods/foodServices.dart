import 'package:get/get.dart';
import 'package:neumorphism/json/foods.dart';
import 'package:neumorphism/model/food.dart';

enum GetPostEnum { Loaded, Loading, Error, Inital }

class FoodServices extends GetxController {
  GetPostEnum bilgi = GetPostEnum.Inital;
  List<foodModel> myList = [];

  Future foodJsonGetir() async {
    var json = foodsJson;

    if (json != null) {
      bilgi = GetPostEnum.Loading;
      for (var item in json) {
        myList.add(foodModel.fromJson(item));
      }

      if (myList.isNotEmpty) {
        update();
        bilgi = GetPostEnum.Loaded;
        return myList;
      }
    } else {
      bilgi = GetPostEnum.Error;
      print('yemek json boş geldi');
    }
  }
}
