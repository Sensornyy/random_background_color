import 'package:flutter/material.dart';

import 'package:random_background_color/common/app_texts.dart';
import 'package:random_background_color/common/random_color_generator.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final generator = RandomColorGenerator();
  Color backgroundColor = const Color(0xFF000000);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          backgroundColor = generator.getColorFromARGB();
        });
      },
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: const Center(
          child: Text(AppTexts.initialText),
        ),
      ),
    );
  }
}
