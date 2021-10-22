import 'package:flutter/material.dart';
import 'style_txt.dart';
import 'constants.dart';

class Dishes extends StatelessWidget {
  final String? txtDish;
  final Color? txtclrDish;
  final double? fontSize;
  final FontWeight? weightDish;
  final double? spaceLetterDish;

  final String? txtCountry;
  final Color? txtclrCountry;
  final double? fontSieCountry;
  final FontWeight? weightCountry;
  final double? spaceLetterCountry;

  final String? txtPrice;
  final Color? txtclrPrice;
  final double? fontSizePrice;
  final FontWeight? weightPrice;
  final double? spaceLetterPrice;

  final String? Image_path;
  Dishes(
    this.txtDish,
    this.txtclrDish,
    this.fontSize,
    this.weightDish,
    this.spaceLetterDish,
    this.fontSieCountry,
    this.spaceLetterCountry,
    this.txtCountry,
    this.txtclrCountry,
    this.weightCountry,
    this.fontSizePrice,
    this.spaceLetterPrice,
    this.txtPrice,
    this.txtclrPrice,
    this.weightPrice,
    this.Image_path,
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            blurRadius: 15,
            offset: Offset(2, 5),
          ),
        ],
        color: Color(0xFFC1CCDA),
        borderRadius: BorderRadius.circular(13),
      ),
      child: Column(
        children: [
          Container(
            height: 180,
            width: 180,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(Image_path!),
              ),
              shape: BoxShape.rectangle,
            ),
          ),
          Container(
            width: 180,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextClass(
                  txtDish,
                  txtclrDish,
                  fontSize,
                  weightDish,
                  spaceLetterDish,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextClass(
                      txtCountry,
                      txtclrCountry,
                      fontSieCountry,
                      weightCountry,
                      spaceLetterCountry,
                    ),
                    TextClass(
                      txtPrice,
                      txtclrPrice,
                      fontSizePrice,
                      weightPrice,
                      spaceLetterPrice,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
