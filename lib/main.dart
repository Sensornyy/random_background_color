import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'presentation/bloc/color_bloc.dart';
import 'presentation/pages/home_page.dart';

void main() =>
    runApp(
      BlocProvider(
        create: (context) => ColorBloc(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            textTheme: const TextTheme(
              bodyMedium: TextStyle(fontSize: 25, color: Colors.white),
            ),
          ),
          home: const HomePage(),
        ),
      ),
    );
