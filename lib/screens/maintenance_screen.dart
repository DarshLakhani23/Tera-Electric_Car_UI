import 'package:carapp/utils/app_string.dart';
import 'package:carapp/utils/assets_utils.dart';
import 'package:carapp/utils/colors_utils.dart';
import 'package:carapp/widget/custom_appbar.dart';
import 'package:carapp/widget/url_launcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';

class MaintenancePage extends StatelessWidget {
  const MaintenancePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        title: AppString.maintenance,
      ),
      backgroundColor: AppColors.splashcolor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 6.w),
          child: Column(
            children: [
              SizedBox(
                height: 5.h,
              ),
              Flexible(
                flex: 5,
                child: Image.asset(ImageAsset.car3),
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(
                AppString.espacAutomobileBoudevilliers,
                style: TextStyle(
                    color: AppColors.textcolor,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 4.h,
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 1.h),
                decoration: BoxDecoration(
                  color: Colors.white12,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: ListTile(
                  title: Text(
                    AppString.nextMaintenance,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 11.sp),
                  ),
                  //tileColor: Colors.white,
                  leading: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset(ImageAsset.calender),
                  ),
                  subtitle: Text(
                    AppString.orIn,
                    style: TextStyle(color: Colors.white, fontSize: 9.sp),
                  ),
                  trailing: ElevatedButton(
                    onPressed: null,
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            AppColors.textcolor)),
                    child: Text(
                      AppString.schedule,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 9.sp),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              GestureDetector(
                onTap: () {
                  launchUrl("tel:+(413)-273-11331");
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 1.h),
                  decoration: BoxDecoration(
                    color: Colors.white12,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: ListTile(
                    title: Text(
                      AppString.assistance,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 11.sp),
                    ),
                    //tileColor: Colors.white,
                    leading: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SvgPicture.asset(ImageAsset.assistance),
                    ),
                    subtitle: Text(
                      AppString.phoneNumber,
                      style: TextStyle(color: Colors.white, fontSize: 9.sp),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
