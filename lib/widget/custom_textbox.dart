import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final TextEditingController contoller;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final FormFieldValidator<String>? validation;
  final GestureTapCallback? onTap;
  final Widget? suffixIcon;
  final bool readOnly;
  const CustomTextField(
      {Key? key,
      required this.label,
      required this.contoller,
      required this.keyboardType,
      required this.textInputAction,
      this.validation,
      this.onTap,
      this.suffixIcon,
      required this.readOnly})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(color: Colors.white, fontSize: 10.sp),
        ),
        SizedBox(
          height: 1.5.h,
        ),
        Container(
          height: 5.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.white12,
          ),
          child: Center(
            child: TextFormField(
              onTap: onTap,
              validator: validation,
              controller: contoller,
              maxLines: 1,
              readOnly: readOnly,
              textAlign: TextAlign.start,
              cursorColor: Colors.white,
              style: TextStyle(color: Colors.white, fontSize: 11.sp),
              keyboardType: keyboardType,
              textInputAction: textInputAction,
              decoration: InputDecoration(
                suffixIcon: suffixIcon,
                isDense: true,
                contentPadding:
                    EdgeInsets.symmetric(vertical: 2.h, horizontal: 5.w),
                focusedBorder: InputBorder.none,
                fillColor: Colors.white60,
                hintStyle: TextStyle(color: Colors.white60, fontSize: 10.sp),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 3.h,
        )
      ],
    );
  }
}
