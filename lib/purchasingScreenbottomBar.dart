import 'package:flutter/material.dart';
import 'style_txt.dart';
import 'constants.dart';

class purchase_bottombar extends StatelessWidget {
  const purchase_bottombar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Container(
              height: 80,
              width: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(
                    27,
                  ),
                ),
                color: Colors.teal,
              ),
              child: Center(
                child: TextClass(
                  'Buy Now',
                  kTxtclr,
                  19,
                  FontWeight.w700,
                  1,
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 80,
              width: 250,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Center(
                child: TextClass(
                  'Description',
                  ksimpletextclr,
                  19,
                  FontWeight.w600,
                  0.6,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
