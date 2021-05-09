import 'package:get/get.dart';

class cartController extends GetxController {
 
  var urunSayisi = 0.obs;

  Future<RxInt> urunEkle(var urunsay) async {
    urunsay++;
    urunSayisi.value = urunsay;
    return urunSayisi;
  }

  Future<RxInt> urunCikar(var urunsay) async {
    if (urunsay > 0) urunsay--;

    urunSayisi.value = urunsay; //updte();
    return urunSayisi;
  }
}
