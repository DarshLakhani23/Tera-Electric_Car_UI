import 'package:carapp/utils/app_string.dart';
import 'package:carapp/utils/assets_utils.dart';
import 'package:carapp/utils/colors_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class RangeAssistant extends StatefulWidget {
  const RangeAssistant({Key? key}) : super(key: key);

  @override
  State<RangeAssistant> createState() => _RangeAssistantState();
}

class _RangeAssistantState extends State<RangeAssistant> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.splashcolor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 50.h,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(ImageAsset.mapImage),
                )),
                child: Container(
                  height: 50.h,
                  color: Colors.black45,
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 2.h, horizontal: 6.w),
                    child: Stack(
                      children: [
                        Row(
                          children: [
                            GestureDetector(
                              child: const Icon(
                                Icons.arrow_back_ios,
                                color: Colors.white,
                                size: 15,
                              ),
                              onTap: () {
                                Get.back();
                              },
                            ),
                            Expanded(
                              child: Text(
                                AppString.rangeAssistant,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w600),
                              ),
                            )
                          ],
                        ),
                        // Positioned(
                        //   top: 10.h,
                        //   child: SvgPicture.asset(ImageAsset.mapLine),
                        // )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 6.w),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.info_rounded,
                          size: 2.3.h,
                          color: AppColors.textcolor,
                        ),
                        SizedBox(
                          width: 3.w,
                        ),
                        Text(
                          AppString.pleaseChargeAtYourDestinationToGoBackHome,
                          style: TextStyle(
                              color: AppColors.textcolor, fontSize: 14.sp),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    Row(
                      children: [
                        Container(
                          padding:
                              EdgeInsets.fromLTRB(0.5.w, 0.5.h, 7.w, 0.5.h),
                          decoration: BoxDecoration(
                            color: Colors.white12,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 15, horizontal: 22),
                            child: Column(
                              //mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  AppString.battery,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  height: 1.h,
                                ),
                                Image.asset(
                                  ImageAsset.battery21,
                                  height: 18.h,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 6.w,
                        ),
                        Container(
                          padding:
                              EdgeInsets.fromLTRB(0.5.w, 0.5.h, 7.w, 0.5.h),
                          decoration: BoxDecoration(
                            color: Colors.white12,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 15, horizontal: 22),
                            child: Column(
                              //mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  AppString.distanceLeft,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  height: 3.h,
                                ),
                                Text(
                                  AppString.mi21,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.w700),
                                ),
                                SizedBox(
                                  height: 0.5.h,
                                ),
                                Text(
                                  AppString.to0,
                                  style: TextStyle(
                                      color: Colors.white60,
                                      fontSize: 8.sp,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  height: 3.h,
                                ),
                                SvgPicture.asset(ImageAsset.charge),
                                SizedBox(
                                  height: 1.h,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
