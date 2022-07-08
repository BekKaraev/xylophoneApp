import 'package:flutter/material.dart';
import 'package:xylophoneapp/constants/text/app_texts.dart';
import '../constants/colors/app_colors.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({Key key}) : super(key: key);
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.mainColor,
      title: const Text(AppTexts.flutterXylophone),
      centerTitle: true,
    );
  }
}
