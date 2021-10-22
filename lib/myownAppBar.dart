import 'package:flutter/material.dart';
import 'style_txt.dart';
import 'constants.dart';

class ownAppBar extends StatelessWidget {
  const ownAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: 220.0,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.teal,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(85),
            bottomRight: Radius.circular(85),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                Icons.list,
                color: Colors.white,
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextClass('Shopify', kTxtclr, 25, FontWeight.w500, 2),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('Images/Shopify.png'),
                      ),
                      shape: BoxShape.circle,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
