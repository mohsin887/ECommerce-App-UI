import 'package:e_commerce_app/screen/navigationscreen/bag_screen.dart';
import 'package:e_commerce_app/screen/navigationscreen/favourite_screen.dart';
import 'package:e_commerce_app/screen/navigationscreen/home/home_screen.dart';
import 'package:e_commerce_app/screen/navigationscreen/profile_screen.dart';
import 'package:e_commerce_app/screen/navigationscreen/shop_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({Key? key}) : super(key: key);

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  int _currentIndex = 0;
  bool isFirstTime = true;
  late List<Map<String, Object>> _pages;

  @override
  initState() {
    _pages = [
      {
        'page': const HomeScreen(),
      },
      {
        'page': const ShopScreen(),
      },
      {
        'page': const BagScreen(),
      },
      {
        'page': const FavouriteScreen(),
      },
      {
        'page': const ProfileScreen(),
      },
    ];

    super.initState();
  }

  void _selectPage(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex]['page'] as Widget,
      bottomNavigationBar: CupertinoTabBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.shopping_cart),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.bag),
            label: 'Bag',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.heart,
            ),
            label: 'Favourite',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.person,
            ),
            label: 'Profile',
          ),
        ],
        currentIndex: _currentIndex,
        onTap: _selectPage,
      ),
    );
  }
}