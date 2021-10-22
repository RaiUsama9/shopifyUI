import 'package:flutter/material.dart';

class myownBottomNavBar extends StatelessWidget {
  final IconData? icondata;
  final IconData? icondata2;
  final IconData? icondata3;
  myownBottomNavBar(this.icondata, this.icondata2, this.icondata3);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          decoration: BoxDecoration(
            color: Color(0xFFF7F5F6),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          padding: EdgeInsets.symmetric(vertical: 10),
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(icondata),
                Icon(icondata2),
                Icon(icondata3),
              ],
            ),
          )),
    );
  }
}
