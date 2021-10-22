import 'package:flutter/material.dart';

class SearchContainer extends StatelessWidget {
  const SearchContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 130),
      child: Container(
        // padding: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              blurRadius: 5,
              offset: Offset(0, 0),
            ),
          ],
          borderRadius: BorderRadius.circular(30),
          border: Border.all(width: 0.1, color: Colors.white),
        ),
        child: TextField(
          decoration: InputDecoration(
            hintStyle: TextStyle(color: Colors.grey),
            prefixIcon: Icon(Icons.search),
            border: InputBorder.none,
            hintText: 'Search Keyword',
          ),
        ),
      ),
    );
  }
}
