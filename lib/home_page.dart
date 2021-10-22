import 'package:flutter/material.dart';
import 'package:shopify/food_purchase.dart';
import 'constants.dart';
import 'style_txt.dart';
import 'own_button.dart';
import 'myownAppBar.dart';
import 'owndishes.dart';
import 'ownbottom_navbar.dart';
import 'feature_food_images.dart';
import 'SearchBox.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Stack(
              children: [
                Positioned(
                  child: ownAppBar(),
                ),
                Positioned(
                  left: 0,
                  right: 0,
                  top: 190,
                  child: SearchContainer(),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextClass(
                    'Recommended',
                    ksimpletextclr,
                    20,
                    FontWeight.w900,
                    1,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        '/InfoScreen',
                      );
                    },
                    child: MyOwnButton(
                      kbtncolor,
                      10,
                      Offset(2, 3.5),
                      11,
                      16,
                      'more',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Purchase(
                            'Burger',
                            'Lahore',
                            'Images/burger.png',
                            '\$144',
                          ),
                        ),
                      );
                    },
                    child: Dishes(
                      'Burger',
                      ksimpletextclr,
                      15,
                      FontWeight.w400,
                      0.5,
                      15,
                      0.8,
                      'Pakistan',
                      kdishesclr,
                      FontWeight.normal,
                      17,
                      0.01,
                      '\$144',
                      kdishesclr,
                      FontWeight.w500,
                      'Images/burger.png',
                    ),
                  ),
                  SizedBox(
                    width: 35,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Purchase(
                            'Donut',
                            'Islamabad',
                            'Images/donut.png',
                            '\$150',
                          ),
                        ),
                      );
                    },
                    child: Dishes(
                      'Donut',
                      ksimpletextclr,
                      15,
                      FontWeight.w400,
                      0.5,
                      15,
                      0.8,
                      'Pakistan',
                      kdishesclr,
                      FontWeight.normal,
                      17,
                      0.01,
                      '\$150',
                      kdishesclr,
                      FontWeight.w500,
                      'Images/donut.png',
                    ),
                  ),
                  SizedBox(
                    width: 35,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Purchase(
                            'Biryani',
                            'Lahore',
                            'Images/biryani.jpg',
                            '\$30',
                          ),
                        ),
                      );
                    },
                    child: Dishes(
                      'Biryani',
                      ksimpletextclr,
                      15,
                      FontWeight.w400,
                      0.5,
                      15,
                      0.8,
                      'Pakistan',
                      kdishesclr,
                      FontWeight.normal,
                      17,
                      0.01,
                      '\$30',
                      kdishesclr,
                      FontWeight.w500,
                      'Images/biryani.jpg',
                    ),
                  ),
                  SizedBox(
                    width: 35,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Purchase(
                            'Pizza',
                            'Lahore',
                            'Images/pizza.jpg',
                            '\$59',
                          ),
                        ),
                      );
                    },
                    child: Dishes(
                      'Pizza',
                      ksimpletextclr,
                      15,
                      FontWeight.w400,
                      0.5,
                      15,
                      0.8,
                      'Pakistan',
                      kdishesclr,
                      FontWeight.normal,
                      17,
                      0.01,
                      '\$59',
                      kdishesclr,
                      FontWeight.w500,
                      'Images/pizza.jpg',
                    ),
                  ),
                  SizedBox(
                    width: 35,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Purchase(
                            'Sajji',
                            'Karachi',
                            'Images/sajji.jpg',
                            '\$10',
                          ),
                        ),
                      );
                    },
                    child: Dishes(
                      'Sajji',
                      ksimpletextclr,
                      15,
                      FontWeight.w400,
                      0.5,
                      15,
                      0.8,
                      'Pakistan',
                      kdishesclr,
                      FontWeight.normal,
                      17,
                      0.01,
                      '\$10',
                      kdishesclr,
                      FontWeight.w500,
                      'Images/sajji.jpg',
                    ),
                  ),
                  SizedBox(
                    width: 35,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Purchase(
                            'Shawarma',
                            'Lahore',
                            'Images/shawarma.jpg',
                            '\$9',
                          ),
                        ),
                      );
                    },
                    child: Dishes(
                      'Shawarma',
                      ksimpletextclr,
                      15,
                      FontWeight.w400,
                      0.5,
                      15,
                      0.8,
                      'Pakistan',
                      kdishesclr,
                      FontWeight.normal,
                      17,
                      0.01,
                      '\$9',
                      kdishesclr,
                      FontWeight.w500,
                      'Images/shawarma.jpg',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextClass(
                    'Feature Foods',
                    ksimpletextclr,
                    20,
                    FontWeight.w900,
                    1,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/InfoScreen');
                    },
                    child: MyOwnButton(
                      kbtncolor,
                      10,
                      Offset(2, 3.5),
                      11,
                      16,
                      'more',
                    ),
                  )
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  FeatureFoodImages(
                      'https://source.unsplash.com/1600x900/?pizza'),
                  SizedBox(
                    width: 25,
                  ),
                  FeatureFoodImages(
                      'https://source.unsplash.com/1600x900/?drinks'),
                  SizedBox(
                    width: 25,
                  ),
                  FeatureFoodImages(
                      'https://source.unsplash.com/1600x900/?steak'),
                  SizedBox(
                    width: 25,
                  ),
                  FeatureFoodImages(
                      'https://source.unsplash.com/1600x900/?sandwich'),
                  SizedBox(
                    width: 25,
                  ),
                  FeatureFoodImages(
                      'https://source.unsplash.com/1600x900/?spaghetti'),
                  SizedBox(
                    width: 25,
                  ),
                  FeatureFoodImages(
                      'https://source.unsplash.com/1600x900/?chips'),
                  SizedBox(
                    width: 25,
                  ),
                  FeatureFoodImages(
                      'https://source.unsplash.com/1600x900/?kebab'),
                  SizedBox(
                    width: 25,
                  ),
                  FeatureFoodImages(
                      'https://source.unsplash.com/1600x900/?Noodles'),
                  SizedBox(
                    width: 25,
                  ),
                  FeatureFoodImages(
                      'https://source.unsplash.com/1600x900/?Hamburger'),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          myownBottomNavBar(
              Icons.star, Icons.favorite_border, Icons.person_add_alt),
        ],
      ),
    );
  }
}
