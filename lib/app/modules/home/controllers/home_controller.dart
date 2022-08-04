import 'package:get/get.dart';

import '../../../data/repositories/repositories.dart';

class HomeController extends GetxController with StateMixin {
  final tabNumber = 0.obs;
  final members = [].obs;

  // final silver = <Member>[].obs;
  // final premium = <Member>[].obs;
  final isLoading = false.obs;

  static HomeController get to => Get.find();

  @override
  void onInit() async {
    await fetchData();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  Future<void> fetchData() async {
    Repositories.member.getAllMember();
    Repositories.member.getUser();
  }
}
