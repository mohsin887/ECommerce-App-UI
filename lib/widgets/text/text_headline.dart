import 'package:flutter/material.dart';

class TextHeadline extends StatelessWidget {
  final String title;
  const TextHeadline({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.headlineMedium,
    );
  }
}