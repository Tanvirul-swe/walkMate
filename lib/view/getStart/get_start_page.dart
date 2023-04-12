import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:walk_mate/bloc/cubit/theme_cubit.dart';
import 'package:walk_mate/constants/app_assets.dart';
import 'package:walk_mate/constants/app_color.dart';
import 'package:walk_mate/constants/app_constants.dart';
import 'package:walk_mate/constants/app_text_style.dart';
import 'package:walk_mate/services/permission/permission_handler.dart';
import 'package:walk_mate/view/targetSetPage/target_set_view.dart';
import 'package:walk_mate/view/widget/primary_button.dart';
import 'package:walk_mate/view/widget/secondary_button.dart';

class GetStartPage extends StatelessWidget {
  const GetStartPage({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeCubit theme = BlocProvider.of<ThemeCubit>(context, listen: true);
    PermissionHandler.requestPermission();
    return Scaffold(
        backgroundColor: theme.isDark ? AppColors.deepBlackColor : Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor:
              theme.isDark ? AppColors.deepBlackColor : Colors.white,
          title: const Text(
            AppConstants.APP_NAME,
            style: AppTextStyle.appbarStyle,
          ),
          actions: [
            SecondaryButton(
              image: AppAssets.THEME_SVG,
              theme: theme,
              onPressed: () {
                theme.changeTheme();
              },
            )
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              child: Text(
                "Set your walking goal todays",
                style: AppTextStyle.largeheadingStyle,
              ),
            ),
            Expanded(
              child: Stack(
                children: [
                  Image.asset(
                    theme.isDark? AppAssets.DARK_MANE_IMAGE: AppAssets.MANE_IMAGE,
                    width: double.infinity,
                    fit: BoxFit.contain,
                  ),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child:
                          PrimaryButton(name: "Get Started", onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>const TargetSetScreen()));
                          })),
                ],
              ),
            ),
          ],
        ));
  }
}

//  Text(
//               'Theme: ${theme.isDark ? 'Dark' : 'Light'}',
//               style: TextStyle(
//                 fontSize: 35,
//                 color: theme.isDark ? Colors.white : Colors.black,
//               ),
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 theme.changeTheme();
//               },
//               child: const Text('Change Theme'),
//             ),
