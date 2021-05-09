import 'package:get/get.dart';

class Messages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'newuser': 'Add new user',
          'title': 'Home Page',
          'food': 'Foods',
          'price': 'Price',
          'addCart': 'Add to Cart',
          'order': 'My Order',
          'money': '\$ ',
          'pay': 'Pay'
        },
        'tr_TR': {
          'newuser': 'Yeni Kullanıcı Ekle',
          'title': 'Ansayfa',
          'food': 'Yemekler',
          'price': 'Fiyat',
          'addCart': 'Sepete Ekle',
          'order': 'Sepetim',
          'money': 'TL',
          'pay': 'Ödeme Ekranı'
        }
      };
}
