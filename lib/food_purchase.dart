import 'package:flutter/material.dart';
import 'package:shopify/constants.dart';
import 'purchase_food_icon.dart';
import 'style_txt.dart';
import 'purchasingScreenbottomBar.dart';

class Purchase extends StatefulWidget {
  final String name;
  final String city;
  final String price;
  final String image;
  Purchase(this.name, this.city, this.image, this.price);
  @override
  _PurchaseState createState() =>
      _PurchaseState(this.name, this.city, this.image, this.price);
}

class _PurchaseState extends State<Purchase> {
  final String name;
  final String city;
  final String price;
  final String image;
  _PurchaseState(this.name, this.city, this.image, this.price);
  Color clr = Colors.teal;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          padding: EdgeInsets.fromLTRB(30, 50, 20, 0),
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.teal,
                            size: 30,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 130,
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(20, 0, 10, 0),
                        child: Column(
                          children: [
                            PurchaseContainer(
                              icon: Icons.settings,
                              clr: Color(0xFF008080),
                            ),
                            PurchaseContainer(
                              icon: Icons.font_download,
                              clr: Color(0xFF008080),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(
                                  () {
                                    if (clr == Colors.teal) {
                                      clr = Colors.red;
                                    } else if (clr == Colors.red) {
                                      clr = Colors.teal;
                                    }
                                  },
                                );
                              },
                              child: Container(
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
                                  Icons.favorite_border,
                                  color: clr,
                                  size: 40,
                                ),
                              ),
                            ),
                            PurchaseContainer(
                              icon: Icons.star_half,
                              clr: Color(0xFF008080),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Flexible(
                    child: Container(
                      height: 535,
                      width: 500,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(40),
                        ),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 6,
                            offset: Offset(1, 1),
                            spreadRadius: 2.5,
                          ),
                        ],
                        image: DecorationImage(
                          image: AssetImage(image),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextClass(
                            name,
                            ksimpletextclr,
                            32,
                            FontWeight.w900,
                            0.3,
                          ),
                          TextClass(
                            price,
                            Color(0xFF008080),
                            32,
                            FontWeight.bold,
                            0.3,
                          ),
                        ],
                      ),
                      TextClass(
                        city,
                        Color(0xFF008080),
                        19,
                        FontWeight.w500,
                        0.2,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: purchase_bottombar(),
      ),
    );
  }
}
