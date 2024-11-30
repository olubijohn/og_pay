import 'package:get/get.dart';

class DashboardController extends GetxController {
final index = 0.obs;

@override
void onInit() {
  super.onInit();
}

void onTap(int value) {
  index.value = value;
  if (index.value == 1) {}
  if (index.value == 2) {}
}
}
