import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:random_background_color/common/app_texts.dart';
import 'package:random_background_color/presentation/bloc/color_bloc.dart';
import 'package:random_background_color/presentation/pages/initial_page.dart';

import 'error_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = context.watch<ColorBloc>().state;

    if (state is ColorInitial) {
      return const InitialPage();
    } else if (state is ColorChanged) {
      return GestureDetector(
        onTap: () {
          context.read<ColorBloc>().add(ColorChangedManually());
        },
        child: Scaffold(
          backgroundColor: state.backgroundColor,
          body: const Center(
            child: Text(AppTexts.initialText),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              context.read<ColorBloc>().add(ColorStart());
            },
            backgroundColor: Colors.white,
            child: const Icon(
              Icons.close,
              color: Colors.black,
            ),
          ),
        ),
      );
    }

    return const ErrorPage();
  }
}
