import 'package:get/get.dart';

class foodController extends GetxController {
  
  double fiyat;

  double tlFiyatCevir(var yFiyat) {
    fiyat = yFiyat * 8.12;
    return fiyat;
  }
   double dolarFiyatCevir(var yFiyat) {
    fiyat = yFiyat / 8.12;
    return fiyat;
  }
}
