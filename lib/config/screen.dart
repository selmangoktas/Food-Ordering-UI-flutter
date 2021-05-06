import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  double sizeH(double value) => MediaQuery.of(this).size.height * value;
  double sizeW(double value) => MediaQuery.of(this).size.width * value;
}

Widget get space => const SizedBox(
      height: 10,
      width: 10,
    );
