import 'dart:async';

import 'package:carapp/utils/assets_utils.dart';
import 'package:carapp/utils/colors_utils.dart';
import 'package:carapp/utils/navigation_utils/navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () => Get.offNamed(Routes.homepage));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.splashcolor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 5.h),
            SvgPicture.asset(ImageAsset.frame),
            SizedBox(height: 10.h),
            SvgPicture.asset(ImageAsset.logo),
          ],
        ),
      ),
    );
  }
}
