import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:walk_mate/bloc/cubit/theme_cubit.dart';
import 'package:walk_mate/constants/app_assets.dart';
import 'package:walk_mate/constants/app_color.dart';
import 'package:walk_mate/constants/app_constants.dart';
import 'package:walk_mate/constants/app_text_style.dart';
import 'package:walk_mate/view/widget/secondary_button.dart';

class TargetSetScreen extends StatelessWidget {
  const TargetSetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeCubit theme = BlocProvider.of<ThemeCubit>(context, listen: true);

    return SafeArea(
        child: Column(
      children: [
        Expanded(
          child: Container(
            color: AppColors.primaryColor,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      AppConstants.APP_NAME,
                      style: AppTextStyle.appbarStyle,
                    ),
                    SecondaryButton(
                      image: AppAssets.THEME_SVG,
                      theme: theme,
                      onPressed: () {
                        theme.changeTheme();
                      },
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            color: AppColors.secondaryColor,
          ),
        ),
      ],
    ));
  }
}
