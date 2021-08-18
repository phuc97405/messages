import 'package:get/instance_manager.dart';
import 'package:messages/Presentation/messages/messages_controller.dart';

class MessagesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MessagesControler());
  }
}
