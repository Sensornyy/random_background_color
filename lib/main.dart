import 'package:flutter/material.dart';

import 'presentation/pages/home_page.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          textTheme: const TextTheme(
            bodyMedium: TextStyle(fontSize: 25),
          ),
        ),
        home: const HomePage(),
      ),
    );
