// ignore_for_file: avoid_print

import 'package:app_mercado_livre/models/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class MlRating extends StatefulWidget {
  final Product product;
  final Function(double) onRatingChanged;
  const MlRating({
    super.key,
    required this.product,
    required this.onRatingChanged,
  });

  @override
  State<MlRating> createState() => _MlRatingState();
}

class _MlRatingState extends State<MlRating> {
  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
      itemSize: 18,
      initialRating: double.parse('${widget.product.evaluation}'),
      direction: Axis.horizontal,
      itemCount: 5,
      itemBuilder: (context, index) {
        return Icon(Icons.star, color: Colors.blue);
      },
      onRatingUpdate: (value) {
        widget.onRatingChanged(value);
        print(value);
      },
    );
  }
}
