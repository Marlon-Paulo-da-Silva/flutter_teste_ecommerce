import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  /// variables
  /// Atualiza Index atual quando a pagina scroll
  void updatePageIndicator(index) {}

  /// Pula para o específico ponto da pagina selecionada
  void dotNavigationClick(index) {}

  /// Atualiza e Pula para a proxima pagina
  void nextPage(index) {}

  /// Atualiza index atual e Pula para a ultima pagina
  void skipPage(index) {}
}