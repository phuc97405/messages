import 'package:get/instance_manager.dart';
import 'package:messages/Presentation/auth/Signup/sign_up_controller.dart';

class SignUpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SignUpController>(() => SignUpController());
  }
}
