import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_complete_guide/screens/categories_screen.dart';
import 'package:flutter_complete_guide/screens/favorites.dart';
import 'package:flutter_complete_guide/widgets/main_drawer.dart';

class BottomNavigationBAr extends StatefulWidget {
  @override
  BottomNavigationState createState() => BottomNavigationState();
}

class BottomNavigationState extends State<BottomNavigationBAr> {
  final List<Widget> _pages = [CategoriesScreen(), FavoriteScreen()];
  int selectedPageIdex = 0;

  void selectedPage(int index) {
    setState(() {});
    selectedPageIdex =index;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Meals"),
        ),
        drawer: MainDrawer(),
        body: _pages[selectedPageIdex],
        bottomNavigationBar: BottomNavigationBar(
            onTap: selectedPage,
            backgroundColor: Theme.of(context).primaryColor,
            unselectedItemColor: Colors.white,
            selectedItemColor: Theme.of(context).accentColor,
            currentIndex: selectedPageIdex,
            selectedFontSize: 20,
            unselectedFontSize: 16,
            type: BottomNavigationBarType.shifting,
            items: [
              BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: Icon(Icons.category),
                title: Text('Categories'),
              ),
              BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: Icon(Icons.star),
                title: Text('Favorites'),
              )
            ]));
  }
}
