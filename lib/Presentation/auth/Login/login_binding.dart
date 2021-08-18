import 'package:get/instance_manager.dart';
import 'package:messages/Presentation/auth/Login/login_controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(() => LoginController());
  }
}
