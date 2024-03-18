import 'package:flutter/material.dart';
import 'package:forwork/components/custom_button.dart';
import 'package:forwork/components/custom_inputfield.dart';
import 'package:forwork/state/app_state.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var textController = TextEditingController();
  String resultText = "";
  bool isVisible = true;
  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  var appState = Get.put(AppState());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Obx(
          () => Container(
            margin: const EdgeInsets.only(left: 10, right: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(appState.currentTitle.value,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.w600)),
                CustomInputField(
                    inputController: textController,
                    labelText: "Введите текст"),
                const SizedBox(height: 20),
                GestureDetector(
                    onTap: () => setText(),
                    child: const CustomButton(buttonTitle: "Вывести")),
                const SizedBox(height: 20),
                GestureDetector(
                    onTap: () => clearField(),
                    child: const CustomButton(buttonTitle: "Очистить"))
              ],
            ),
          ),
        ),
      )),
    );
  }

  void setText() {
    // appState.setLoadingStatus();
    if (textController.text.isNotEmpty) {
      appState.setText(textVarible: textController.text);
      // appState.setLoadingStatus();
    } else {
      Get.defaultDialog(
          title: "Ошибка", content: const Text("Поле не заполнено"));
      //appState.setLoadingStatus();
      return;
    }
  }

  void clearField() {
    appState.clearField();
    textController.text = "";
  }
}
