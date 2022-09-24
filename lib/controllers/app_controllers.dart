import 'package:get/get.dart';

class AppControllers extends GetxController {
  RxInt counter = 0.obs;
  RxInt navIndex = 0.obs;

  increment() => {counter++};
}
