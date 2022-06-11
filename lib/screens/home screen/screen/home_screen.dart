import 'package:carapp/screens/home%20screen/controller/toggle_controller.dart';
import 'package:carapp/utils/app_string.dart';
import 'package:carapp/utils/assets_utils.dart';
import 'package:carapp/utils/colors_utils.dart';
import 'package:carapp/utils/navigation_utils/navigation.dart';
import 'package:carapp/widget/app_drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController search = TextEditingController();
  var scaffoldFey = GlobalKey<ScaffoldState>();
  boolcontrol controller = Get.put(boolcontrol());
  bool lock = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      key: scaffoldFey,
      backgroundColor: AppColors.splashcolor,
      drawer: AppDrawer(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 6.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      scaffoldFey.currentState?.openDrawer();
                    },
                    child: SvgPicture.asset(ImageAsset.appDrawer),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle,
                        border:
                            Border.all(color: AppColors.circleavatar, width: 3),
                        boxShadow: const [
                          BoxShadow(
                              offset: Offset(0, 2),
                              blurRadius: 10,
                              color: AppColors.circleavatar)
                        ]),
                    child: const Padding(
                      padding: EdgeInsets.all(8),
                      child: CircleAvatar(
                        radius: 30,
                        child: Image(
                          image: AssetImage(ImageAsset.dp),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    AppString.welcomeAron,
                    textAlign: TextAlign.start,
                    style:
                        TextStyle(color: AppColors.textcolor, fontSize: 9.sp),
                  ),
                  SizedBox(
                    height: 0.3.h,
                  ),
                  Text(
                    AppString.whereWouldYouLikeToGo,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              SizedBox(
                height: 2.h,
              ),
              Container(
                height: 5.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white12,
                ),
                child: Center(
                  child: TextFormField(
                    controller: search,
                    maxLines: 1,
                    textAlign: TextAlign.start,
                    cursorColor: Colors.white,
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      isDense: true,
                      contentPadding: EdgeInsets.symmetric(vertical: 2.h),
                      focusedBorder: InputBorder.none,
                      fillColor: Colors.white60,
                      hintText: AppString.search,
                      hintStyle:
                          TextStyle(color: Colors.white60, fontSize: 10.sp),
                      prefixIcon: const Icon(
                        Icons.search,
                        color: Colors.white60,
                      ),
                    ),
                  ),
                ),
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(Routes.rangeAssistant);
                    },
                    child: Row(
                      children: [
                        Image.asset(ImageAsset.range, height: 9.sp),
                        SizedBox(
                          width: 1.w,
                        ),
                        Text(
                          AppString.rangeAssistant,
                          style: TextStyle(
                              color: AppColors.textcolor, fontSize: 9.sp),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Flexible(
                flex: 25,
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    child: Image.asset(
                      ImageAsset.car,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                        vertical: 0.5.h, horizontal: 0.5.w),
                    decoration: BoxDecoration(
                      color: Colors.white12,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: 4.w, right: 10.w, top: 1.5.h, bottom: 1.5.h),
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
                            height: 19.h,
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
                  Spacer(),
                  Column(
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(5.w, 1.5.h, 16.w, 2.5.h),
                        decoration: BoxDecoration(
                          color: Colors.white12,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset(ImageAsset.lock),
                                SizedBox(
                                  width: 3.w,
                                ),
                                Text(
                                  AppString.unlocked,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Obx(
                                  () => SizedBox(
                                    height: 2.5.h,
                                    child: FittedBox(
                                      child: CupertinoSwitch(
                                        activeColor: AppColors.textcolor,
                                        value: controller.istoogle.value,
                                        onChanged: (value) {
                                          controller.istoogle.value =
                                              !controller.istoogle.value;
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 3.w,
                                ),
                                Text(
                                  AppString.lock,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 9.sp,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(5.w, 2.5.h, 16.w, 2.5.h),
                        decoration: BoxDecoration(
                          color: Colors.white12,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.location_on_sharp,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 3.w,
                            ),
                            Text(
                              AppString.findMe,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(5.w, 2.5.h, 5.w, 2.5.h),
                        decoration: BoxDecoration(
                          color: Colors.white12,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.warning_rounded,
                              color: AppColors.emergency,
                            ),
                            SizedBox(
                              width: 3.w,
                            ),
                            Text(
                              AppString.emergency,
                              style: TextStyle(
                                  color: AppColors.emergency,
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              width: 3.w,
                            ),
                            SvgPicture.asset(ImageAsset.emergency)
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
