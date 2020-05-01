import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CateGoriesMeals extends StatelessWidget {
  final String categoryId;
  final String categoryTitle;


  CateGoriesMeals(this.categoryId, this.categoryTitle);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body :Center(
        child: Text(
            "The Recipe of category"
        ),
      ),
    );
  }

}