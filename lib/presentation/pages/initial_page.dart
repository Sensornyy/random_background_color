import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/color_bloc.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('How we change the color?'),
            ElevatedButton(
              onPressed: () {
                context.read<ColorBloc>().add(ColorStart());
              },
              child: const Text('Manually'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Automatically'),
            ),
          ],
        ),
      ),
    );
  }
}
