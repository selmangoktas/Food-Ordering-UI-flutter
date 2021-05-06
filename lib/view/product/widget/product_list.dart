import 'package:flutter/material.dart';

class urunListelemWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 1,
      separatorBuilder: (BuildContext context, int index) {
        return;
      },
      itemBuilder: (BuildContext context, int index) {
        return;
      },
    );
  }
}
