library home_view;

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:training_member/app/data/extensions/context_x.dart';
import 'package:training_member/app/data/utils/utils.dart';
import 'package:training_member/app/modules/home/views/tab_bar.dart';

import '../../../data/constants/asset_paths.dart';
import '../../../data/constants/strings.dart';
import '../controllers/home_controller.dart';
import 'bot_nav_bar.dart';
import 'member_list.dart';

part 'search_bar.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.colors.primaryContainer,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: context.colors.primaryContainer,
            flexibleSpace: Align(
              alignment: Alignment.center,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.keyboard_arrow_left,
                        size: 36,
                      ),
                    ),
                    SvgPicture.asset(icNBiz),
                    IconButton(
                      onPressed: () {
                        Get.changeTheme(
                          Get.isDarkMode
                              ? Utils.theme.lightTheme
                              : Utils.theme.darkTheme,
                        );
                      },
                      icon: const Icon(
                        Icons.settings_outlined,
                        size: 28,
                      ),
                    ),
                  ]),
            ),
            // leadingWidth: 12,
          ),
          body: Column(
            children: [
              const SearchBar(),
              Obx(
                () => DefaultTabController(
                  initialIndex: controller.tabNumber.value,
                  length: 2,
                  child: Expanded(
                    child: Column(
                      children: [
                        const MyTabBar(),
                        Divider(
                          height: 0.5,
                          color: context.colors.tertiary,
                        ),
                        Expanded(
                          child: Obx(
                            () => TabBarView(
                              physics: const NeverScrollableScrollPhysics(),
                              children: [
                                MemberList(
                                  list: controller.members.value,
                                ),
                                MemberList(
                                  list: controller.membersPremium.value,
                                )
                                //
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
          bottomNavigationBar: const BotNavBar(),
        ),
      ),
    );
  }
}
