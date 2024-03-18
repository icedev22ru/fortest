import 'package:get/get.dart';

class AppState extends GetxController {
  var currentTitle = "Text this".obs;
  var isLoading = false.obs;

  void setText({required String textVarible}) {
    currentTitle.value = textVarible;
  }

  void setLoadingStatus() {
    isLoading.toggle();
  }

  void clearField() {
    currentTitle.value = "";
  }
}
