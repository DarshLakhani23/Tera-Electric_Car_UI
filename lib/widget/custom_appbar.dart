import 'package:carapp/utils/colors_utils.dart';
import 'package:carapp/utils/navigation_utils/navigation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class CustomAppbar extends StatelessWidget with PreferredSizeWidget {
  final String title;
  CustomAppbar({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.splashcolor,
      elevation: 0,
      leading: GestureDetector(
        child: const Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
          size: 15,
        ),
        onTap: () {
          Get.offNamed(Routes.homepage);
        },
      ),
      centerTitle: true,
      title: Text(
        title,
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Colors.white, fontSize: 14.sp, fontWeight: FontWeight.w600),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(55);
}
