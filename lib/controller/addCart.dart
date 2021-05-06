import 'package:get/get.dart';

class cartViewController extends GetxController {
  int _urunSayisi = 0;

  Future<int> urunEkle(int urunsay) async {
    urunsay++;
    _urunSayisi = urunsay;
    return _urunSayisi;
  }

  Future<int> urunCikar(int urunsay) async {
    urunsay--;
    _urunSayisi = urunsay;
    return _urunSayisi;
  }
}
