import 'package:carapp/utils/colors_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';

class FirstViewOfYourMiracle extends StatelessWidget {
  final String svgImage;
  final String boldText;
  final bool value;
  final String smallText;
  final ValueChanged<bool>? onTap;

  FirstViewOfYourMiracle(
      {Key? key,
      required this.value,
      required this.svgImage,
      required this.boldText,
      required this.smallText,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(3.w, 1.h, 7.w, 2.h),
      decoration: BoxDecoration(
        color: Colors.white12,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SvgPicture.asset(svgImage),
              SizedBox(
                width: 3.w,
              ),
              Text(
                boldText,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 5.h,
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(
                height: 2.5.h,
                child: FittedBox(
                  child: CupertinoSwitch(
                      activeColor: AppColors.textcolor,
                      value: value,
                      onChanged: onTap),
                ),
              ),
              SizedBox(
                width: 3.w,
              ),
              Text(
                smallText,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 9.sp,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
