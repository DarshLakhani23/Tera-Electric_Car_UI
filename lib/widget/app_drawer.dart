import 'package:carapp/screens/home%20screen/controller/toggle_controller.dart';
import 'package:carapp/utils/app_string.dart';
import 'package:carapp/utils/assets_utils.dart';
import 'package:carapp/utils/colors_utils.dart';
import 'package:carapp/utils/navigation_utils/navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class AppDrawer extends StatelessWidget {
  AppDrawer({Key? key}) : super(key: key);
  boolcontrol controller = Get.put(boolcontrol());
  Map arg = Get.arguments ?? {};
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.splashcolor,
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 6.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(Get.arguments.toString()),
              GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: SvgPicture.asset(ImageAsset.selectedDrawer)),
              SizedBox(
                height: 7.h,
              ),
              GestureDetector(
                onTap: () {
                  Get.toNamed(Routes.profile);
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.black,
                      shape: BoxShape.circle,
                      border:
                          Border.all(color: AppColors.circleavatar, width: 2),
                      boxShadow: const [
                        BoxShadow(
                            offset: Offset(0, 2),
                            blurRadius: 5,
                            color: AppColors.circleavatar)
                      ]),
                  child: const Padding(
                    padding: EdgeInsets.all(7),
                    child: CircleAvatar(
                      radius: 30,
                      child: Image(
                        image: AssetImage(ImageAsset.dp),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 3.h,
              ),
              Text(
                "Travis Scott",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 14.sp),
              ),
              SizedBox(
                height: 0.5.h,
              ),
              Text(
                AppString.myMiracle,
                style: TextStyle(color: Colors.white, fontSize: 9.sp),
              ),
              SizedBox(
                height: 5.h,
              ),
              GestureDetector(
                onTap: () {
                  Get.toNamed(Routes.yourMiracle);
                },
                child: SizedBox(
                  height: 8.h,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset(ImageAsset.yourMiracle),
                      SizedBox(
                        width: 6.w,
                      ),
                      Text(
                        AppString.yourMiracle,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.sp,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.toNamed(Routes.maintenancePage);
                },
                child: SizedBox(
                  height: 8.h,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset(ImageAsset.maintenance),
                      SizedBox(
                        width: 6.w,
                      ),
                      Text(
                        AppString.maintenance,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.sp,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.toNamed(Routes.aboutPage);
                },
                child: SizedBox(
                  height: 8.h,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset(ImageAsset.about),
                      SizedBox(
                        width: 6.w,
                      ),
                      Text(
                        AppString.about,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.sp,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const Divider(
                color: Colors.white24,
              ),
              SizedBox(
                height: 8.h,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset(ImageAsset.logout),
                    SizedBox(
                      width: 6.w,
                    ),
                    Text(
                      AppString.logout,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.sp,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
