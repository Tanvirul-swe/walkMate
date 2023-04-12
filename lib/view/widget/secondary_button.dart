import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'dart:math' as math;

import 'package:walk_mate/bloc/cubit/theme_cubit.dart';

class SecondaryButton extends StatelessWidget {
  final String image;
  final VoidCallback onPressed;
  final ThemeCubit theme;

  const SecondaryButton(
      {super.key, required this.image, required this.onPressed,required this.theme});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Transform(
            alignment: Alignment.center,
            transform: Matrix4.rotationY(theme.isDark?0: math.pi),
            child: SvgPicture.asset(
              image,
              width: 30,
              height: 30,
            )),
      ),
    );
  }
}
