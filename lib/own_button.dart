import 'package:flutter/material.dart';
import 'style_txt.dart';
import 'constants.dart';

class MyOwnButton extends StatelessWidget {
  final Color? btnclr;
  final double? blurRadiusbtn;
  final Offset? btnoffset;
  final double? btnPadding;
  final double? circleRadius;
  final String? btntxt;
  MyOwnButton(this.btnclr, this.blurRadiusbtn, this.btnoffset, this.btnPadding,
      this.circleRadius, this.btntxt);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(btnPadding!),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(circleRadius!),
        color: btnclr,
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurRadius: blurRadiusbtn!,
            offset: btnoffset!,
          ),
        ],
      ),
      child: TextClass(btntxt, kTxtclr, 18, FontWeight.normal, 1),
    );
  }
}
