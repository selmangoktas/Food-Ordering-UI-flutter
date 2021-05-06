import 'package:flutter/material.dart';

Text buildRatingStars(int rating) {
  var stars = '';
  for (var i = 0; i < rating; i++) {
    stars += '⭐ ';
  }

  stars.trim();

  return Text(stars);
}
