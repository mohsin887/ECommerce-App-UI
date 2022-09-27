import 'package:e_commerce_app/screen/navigationscreen/home/street_cloth_item.dart';
import 'package:flutter/material.dart';

import '../../../model/summer_data.dart';

class ClothSaleScree extends StatelessWidget {
  const ClothSaleScree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: clothData
              .map(
                (catData) => StreetClothItem(
                  title: catData.title,
                  imageUrl: catData.imageUrl,
                  id: catData.id,
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}