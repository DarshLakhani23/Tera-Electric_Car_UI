import 'package:get/get.dart';

class boolcontrol extends GetxController {
  RxBool istoogle = false.obs;
  RxBool isLock = true.obs;
  RxBool isLightOn = false.obs;
}

class InitialBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => boolcontrol(), fenix: true);
  }
}
