import 'package:carapp/utils/app_string.dart';
import 'package:carapp/utils/assets_utils.dart';
import 'package:carapp/utils/colors_utils.dart';
import 'package:carapp/widget/custom_appbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        title: AppString.about,
      ),
      backgroundColor: AppColors.splashcolor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 6.w),
          child: Column(
            children: [
              Flexible(
                flex: 15,
                child: Image.asset(ImageAsset.car4),
              ),
              SizedBox(
                height: 1.h,
              ),
              _screen(
                  text1: AppString.model,
                  subtext1: AppString.modelName,
                  text2: AppString.kmHours,
                  subtext2: AppString.totalKm,
                  text3: AppString.batteryHealth,
                  subtext3: AppString.veryGood,
                  subtext4: "95%"),
              Spacer(),
              _screen(
                text1: AppString.os,
                subtext1: AppString.osName,
                text2: AppString.color,
                subtext2: AppString.infiniteBlack,
                text3: AppString.engineBattery,
                subtext4: AppString.thoruskW,
                subtext3: "",
              ),
              Spacer(),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 1.h),
                decoration: BoxDecoration(
                  color: Colors.white12,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 2.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            AppString.chassis,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            AppString.chassisNumber,
                            style: TextStyle(
                              color: Colors.white60,
                              fontSize: 8.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Divider(
                      color: Colors.white24,
                      height: 4,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 2.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            AppString.nFTKey,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            AppString.nFTKeyValue,
                            style: TextStyle(
                              color: Colors.white60,
                              fontSize: 8.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
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
    );
  }

  Widget _screen(
      {required String text1,
      required String subtext1,
      required String text2,
      required String subtext2,
      required String text3,
      String? subtext3,
      required String subtext4}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 1.h),
      decoration: BoxDecoration(
        color: Colors.white12,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 2.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  text1,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  subtext1,
                  style: TextStyle(
                    color: Colors.white60,
                    fontSize: 9.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            color: Colors.white24,
            height: 4,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 2.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  text2,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  subtext2,
                  style: TextStyle(
                    color: Colors.white60,
                    fontSize: 8.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            color: Colors.white24,
            height: 4,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 2.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  text3,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: subtext3 ?? "",
                        style: TextStyle(
                          color: AppColors.textcolor,
                          fontSize: 8.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TextSpan(
                        text: subtext4,
                        style: TextStyle(
                          color: Colors.white60,
                          fontSize: 8.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
