import 'package:e_commerce_app/routes/routes.dart';
import 'package:e_commerce_app/screen/navigationscreen/home/home_screen.dart';
import 'package:e_commerce_app/widgets/size/size_box_hight.dart';
import 'package:e_commerce_app/widgets/text/size_title_medium.dart';
import 'package:e_commerce_app/widgets/text/text_title_large.dart';
import 'package:flutter/material.dart';

class FashionSaleScreen extends StatefulWidget {
  const FashionSaleScreen({Key? key}) : super(key: key);

  @override
  State<FashionSaleScreen> createState() => _FashionSaleScreenState();
}

class _FashionSaleScreenState extends State<FashionSaleScreen> {
  bool isNew = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  SizedBox(
                    width: double.maxFinite,
                    height: 250,
                    child: Opacity(
                      opacity: 0.5,
                      child: Image.network(
                        'https://images.unsplash.com/photo-1492707892479-7bc8d5a4ee93?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=930&q=80',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 40,
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed(Routes.clothSaleScree);
                      },
                      child: const Text(
                        'Street clothes',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizeBoxHeight(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const TextTitleLarge(title: 'Sale'),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            'View all',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizeBoxHeight(height: 6),
                    const TextTitleMedium(
                      title: 'Super summer sale',
                    ),
                    SizedBox(
                      height: 500,
                      child: ListView.builder(
                        reverse: true,
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: 6,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ShoppingCard(isNew: isNew),
                          );
                        },
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const TextTitleLarge(title: 'New'),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            'View all',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizeBoxHeight(height: 6),
                    const TextTitleMedium(
                        title: 'You’ve never seen it before!'),
                    SizedBox(
                      height: 500,
                      child: ListView.builder(
                        reverse: true,
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: 6,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ShoppingCard(isNew: !isNew),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}