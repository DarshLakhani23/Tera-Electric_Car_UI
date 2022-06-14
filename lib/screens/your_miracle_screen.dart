import 'package:carapp/screens/home%20screen/controller/toggle_controller.dart';
import 'package:carapp/utils/app_string.dart';
import 'package:carapp/utils/assets_utils.dart';
import 'package:carapp/utils/colors_utils.dart';
import 'package:carapp/widget/custom_appbar.dart';
import 'package:carapp/widget/first_view_of_your_miracle.dart';
import 'package:carapp/widget/maintainance_view_your_miracle.dart';
import 'package:carapp/widget/url_launcher.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../utils/navigation_utils/navigation.dart';

class YourMiracle extends StatefulWidget {
  const YourMiracle({Key? key}) : super(key: key);

  @override
  State<YourMiracle> createState() => _YourMiracleState();
}

class _YourMiracleState extends State<YourMiracle> {
  boolcontrol controller = Get.put(boolcontrol());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        title: AppString.yourMiracle,
      ),
      backgroundColor: AppColors.splashcolor,
      body: Obx(
        () => SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 6.w),
            child: Column(
              children: [
                Flexible(
                  flex: 5,
                  child: Image.asset(ImageAsset.car2),
                ),
                Flexible(
                  flex: 9,
                  child: Row(
                    children: [
                      Flexible(
                        flex: 5,
                        child: Column(
                          children: [
                            FirstViewOfYourMiracle(
                              value: controller.istoogle.value,
                              onTap: (value) {
                                controller.istoogle.value =
                                    !controller.istoogle.value;
                              },
                              svgImage: ImageAsset.lock,
                              boldText: AppString.unlocked,
                              smallText: AppString.lock,
                            ),
                            _battery(),
                            GestureDetector(
                              onTap: () {
                                launchUrl("tel:+(413)-273-11331");
                              },
                              child: const Maintenance(
                                text: AppString.maintenance,
                                svgImage: ImageAsset.maintenance,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 4.w,
                      ),
                      Flexible(
                        flex: 5,
                        child: Column(
                          children: [
                            FirstViewOfYourMiracle(
                              onTap: (value) {
                                controller.isLightOn.value =
                                    !controller.isLightOn.value;
                              },
                              value: controller.isLightOn.value,
                              svgImage: ImageAsset.lightBulb,
                              boldText: AppString.lightsOn,
                              smallText: AppString.turnOff,
                            ),
                            _temperature(),
                            GestureDetector(
                              onTap: () {
                                Get.toNamed(Routes.aboutPage);
                              },
                              child: const Maintenance(
                                text: AppString.about,
                                svgImage: ImageAsset.about,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _battery() {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 1.h,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white12,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding:
              EdgeInsets.only(left: 3.w, right: 16.w, top: 2.h, bottom: 1.5.h),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppString.battery,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 1.h,
              ),
              Image.asset(
                ImageAsset.battery88,
                height: 18.5.h,
              ),
              Text(
                AppString.remaining,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 9.sp,
                ),
              ),
              SizedBox(
                height: 0.5.h,
              ),
              Text(
                AppString.mi240,
                style: TextStyle(
                    color: AppColors.textcolor,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _temperature() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 1.h),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white12,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 3.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppString.temperature,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 0.5.h,
              ),
              Text(
                AppString.outside,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 9.sp,
                    fontWeight: FontWeight.w500),
              ),
              Image.asset(
                ImageAsset.speedometer,
                height: 13.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "65",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.sp,
                        fontWeight: FontWeight.w700),
                  ),
                  Text(
                    AppString.f,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 8.sp,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(
                height: 1.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset(ImageAsset.ac, height: 2.5.h),
                  SvgPicture.asset(ImageAsset.acMode, height: 2.5.h)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
