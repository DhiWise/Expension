import '../controller/homepage_controller.dart';
import 'package:get/get.dart';

class HomepageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomepageController());
  }
}
