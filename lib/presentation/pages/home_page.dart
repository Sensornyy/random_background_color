import 'package:flutter/material.dart';

import 'package:random_background_color/common/app_texts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(AppTexts.initialText),
      ),
    );
  }
}
