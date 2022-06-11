import 'package:carapp/screens/home%20screen/controller/toggle_controller.dart';
import 'package:carapp/utils/colors_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import 'utils/navigation_utils/navigation.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/splashscreen',
        initialBinding: InitialBinding(),
        getPages: Routes.routes,
        theme: ThemeData(
          //fontFamily: 'Montserrat',
          scaffoldBackgroundColor: AppColors.splashcolor,
        ),
      );
    });
  }
}
