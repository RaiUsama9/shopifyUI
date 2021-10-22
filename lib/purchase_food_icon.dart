import 'package:flutter/material.dart';

class PurchaseContainer extends StatelessWidget {
  final IconData? icon;
  final Color? clr;

  PurchaseContainer({this.icon, this.clr});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      // padding: EdgeInsets.all(20),
      margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurRadius: 5,
            offset: Offset(2, 2),
          ),
        ],
      ),
      child: Icon(
        icon,
        color: clr,
        size: 40,
      ),
    );
  }
}
