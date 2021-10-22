import 'package:flutter/material.dart';

class FeatureFoodImages extends StatelessWidget {
  final String? urlImage;
  FeatureFoodImages(this.urlImage);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 320,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        image: DecorationImage(
          image: NetworkImage(urlImage!),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
