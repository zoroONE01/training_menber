import 'package:get/get.dart';
import 'package:training_member/app/data/repositories/member_repository.dart';

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
    isLoading.value = true;
    if (tabNumber.value == 0) {
      members.assignAll(await MemberRepository().getAllMember() ?? []);
    } else {
      members.assignAll(await MemberRepository().getPremiumMember() ?? []);
    }
    isLoading.value = false;
  }

// void switchTab(int input) async {
//   await fetchData();
//   if (input != tabNumber.value) {
//     tabNumber.value = input;
//
//   }
// }
}
