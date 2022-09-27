import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_commerce_app/routes/routes.dart';
import 'package:e_commerce_app/widgets/size/size_box_hight.dart';
import 'package:e_commerce_app/widgets/size/size_box_width.dart';
import 'package:e_commerce_app/widgets/text/size_title_medium.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../widgets/text/text_title_large.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isNew = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    SizedBox(
                      width: double.maxFinite,
                      child: CachedNetworkImage(
                        imageUrl:
                            'https://images.unsplash.com/photo-1621261027519-a71ac66d5a68?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=688&q=80',
                        placeholder: (context, url) =>
                            CupertinoActivityIndicator(
                          color: Theme.of(context).primaryColor,
                        ),
                        errorWidget: (context, url, error) => const SizedBox(
                          width: double.maxFinite,
                          child: Icon(
                            Icons.image,
                            size: 50,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 150,
                      left: 10,
                      child: Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white38,
                        ),
                        child: const Text(
                          'Fashion\nSale',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 46,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 50,
                      left: 10,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                          onPressed: () {
                            Navigator.of(context)
                                .pushNamed(Routes.fashionSaleScreen);
                          },
                          child: const Text(
                            'Check',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          )),
                    ),
                  ],
                ),
                const SizeBoxHeight(height: 20),
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
                const TextTitleMedium(title: 'You’ve never seen it before!'),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ShoppingCard extends StatelessWidget {
  const ShoppingCard({
    Key? key,
    required this.isNew,
  }) : super(key: key);

  final bool isNew;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              height: 300,
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: Colors.grey,
                  width: 2,
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  'https://images.unsplash.com/photo-1627225924765-552d49cf47ad?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 10,
              left: 10,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: isNew ? Colors.black : Theme.of(context).primaryColor,
                ),
                child: Text(
                  isNew ? 'NEW' : '-20% ',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Positioned(
              right: 0,
              bottom: -20,
              child: Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.favorite_border,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizeBoxHeight(height: 20),
        Row(
          children: const [
            Icon(
              Icons.star_border_outlined,
              color: Colors.grey,
            ),
            Icon(
              Icons.star_border_outlined,
              color: Colors.grey,
            ),
            Icon(
              Icons.star_border_outlined,
              color: Colors.grey,
            ),
            Icon(
              Icons.star_border_outlined,
              color: Colors.grey,
            ),
            Icon(
              Icons.star_border_outlined,
              color: Colors.grey,
            ),
            SizeBoxWidth(width: 4),
            Text(
              '(0)',
              style: TextStyle(fontSize: 22, color: Colors.grey),
            ),
          ],
        ),
        const SizeBoxHeight(height: 4),
        const TextTitleMedium(
          title: 'Mango Boy',
        ),
        const SizeBoxHeight(height: 4),
        const Text(
          'T-Shirt Sailing',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            color: Colors.black,
            fontSize: 22,
          ),
        ),
        const SizeBoxHeight(height: 4),
        const Text(
          '\$10',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: Colors.black,
            fontSize: 22,
          ),
        ),
      ],
    );
  }
}