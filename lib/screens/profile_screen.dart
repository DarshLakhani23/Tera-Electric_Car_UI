import 'package:carapp/utils/app_string.dart';
import 'package:carapp/utils/assets_utils.dart';
import 'package:carapp/utils/colors_utils.dart';
import 'package:carapp/widget/custom_appbar.dart';
import 'package:carapp/widget/custom_textbox.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:sizer/sizer.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController name = TextEditingController();
  final TextEditingController address = TextEditingController();
  final TextEditingController cardInfo = TextEditingController();
  TextEditingController birthdate = TextEditingController();

  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //resizeToAvoidBottomInset: false,
      appBar: CustomAppbar(
        title: AppString.profile,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 6.w),
            child: Column(
              children: [
                SizedBox(
                  height: 5.h,
                ),
                SizedBox(
                  height: 12.h,
                  child: Stack(
                    children: [
                      Center(
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.black,
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color: AppColors.circleavatar, width: 3),
                              boxShadow: const [
                                BoxShadow(
                                    offset: Offset(0, 2),
                                    blurRadius: 5,
                                    color: AppColors.circleavatar)
                              ]),
                          child: const Padding(
                            padding: EdgeInsets.all(5),
                            child: CircleAvatar(
                              radius: 45,
                              child: Image(
                                image: AssetImage(ImageAsset.dp),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 7.h,
                        left: 50.w,
                        child: const CircleAvatar(
                          radius: 15,
                          backgroundColor: AppColors.textcolor,
                          child: Icon(
                            Icons.edit,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 3.h,
                ),
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      CustomTextField(
                        readOnly: false,
                        label: AppString.yourName,
                        contoller: name,
                        // validation: (value) {
                        //   if (value == null || value.isEmpty) {
                        //     return 'Please enter some text';
                        //   }
                        //   return null;
                        // },
                        keyboardType: TextInputType.text,
                        textInputAction: TextInputAction.next,
                      ),
                      CustomTextField(
                        readOnly: false,
                        label: AppString.address,
                        contoller: address,
                        keyboardType: TextInputType.text,
                        textInputAction: TextInputAction.next,
                      ),
                      CustomTextField(
                        readOnly: true,
                        label: AppString.dateOfBirth,
                        contoller: birthdate,
                        keyboardType: TextInputType.none,
                        textInputAction: TextInputAction.next,
                        onTap: () {
                          _selectDate(context);
                        },
                        suffixIcon: Padding(
                          padding: const EdgeInsets.all(17.0),
                          child: SvgPicture.asset(ImageAsset.downArrow),
                        ),
                      ),
                      CustomTextField(
                        readOnly: false,
                        // validation: (value) {
                        //   value!.isEmpty ? "Enter Your Name" : RegExp('[0-9]');
                        // },
                        label: AppString.cardInfo,
                        contoller: cardInfo,
                        keyboardType: TextInputType.number,
                        textInputAction: TextInputAction.done,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 7.h,
                ),
                ElevatedButton(
                  onPressed: () {
                    // if (formKey.currentState!.validate()) {
                    // ScaffoldMessenger.of(context).showSnackBar(
                    //   const SnackBar(content: Text('Processing Data')),
                    // );

                    // Get.offNamed(Routes.appDrawer);
                    // arguments: {'name': name.text});
                    print(name.text);
                    Get.back();
                    // }
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          AppColors.textcolor)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      AppString.editProfile,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 10.sp),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(1960),
      lastDate: DateTime.now(),
    );
    if (picked != null && picked != selectedDate) {
      String formattedDate = DateFormat('MM-dd-yyyy').format(picked);
      setState(() {
        selectedDate = picked;
        birthdate.text = formattedDate;
      });
    }
  }
}
