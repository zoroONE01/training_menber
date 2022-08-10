import 'package:get/get.dart';
import 'package:training_member/app/data/models/member.dart';

import '../../../data/repositories/repositories.dart';

class HomeController extends GetxController with StateMixin {
  final tabNumber = 0.obs;
  final members = <Member>[].obs;
  final membersPremium = <Member>[].obs;
  final toDarkMode = false.obs;

  // final themeMode = Brightness.light.obs;

  // static HomeController get to => Get.find();

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
    members.value = await Repositories.member.getAllMember() ?? [];
    membersPremium.value = await Repositories.member.getMemberPremium() ?? [];
  }
}
