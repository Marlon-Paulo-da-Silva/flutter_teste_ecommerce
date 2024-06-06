import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  /// variables
  final pageController = PageController();  
  Rx<int> currentPageIndex = 0.obs;
  
  /// Atualiza Index atual quando a pagina scroll
  void updatePageIndicator(index) => currentPageIndex.value = index;

  /// Pula para o específico ponto da pagina selecionada
  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  /// Atualiza e Pula para a proxima pagina
  void nextPage() {
    if(currentPageIndex.value == 2){
      // Get.to(LoginScreen());
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  /// Atualiza index atual e Pula para a ultima pagina
  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}