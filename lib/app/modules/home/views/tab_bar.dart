import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:training_member/app/data/extensions/context_x.dart';

import '../../../data/constants/asset_paths.dart';
import '../../../data/constants/strings.dart';
import '../controllers/home_controller.dart';

class MyTabBar extends GetView<HomeController> {
  const MyTabBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBar(
        isScrollable: true,
        onTap: (value) {
          if (controller.tabNumber.value != value) {
            controller.tabNumber.value = value;
            // controller.fetchData();
          }
        },
        labelStyle: context.textTheme.bodyLarge?.copyWith(
          fontSize: 11,
          fontWeight: FontWeight.w700,
        ),
        labelColor: context.colors.primary,
        unselectedLabelColor: context.colors.inversePrimary,
        unselectedLabelStyle: context.textTheme.bodyLarge?.copyWith(
          fontSize: 11,
          fontWeight: FontWeight.w700,
        ),
        indicatorColor: Colors.transparent,
        tabs: [
          Tab(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 5),
                  child: Obx(
                    () => SvgPicture.asset(controller.tabNumber.value == 0
                        ? icClockOrange
                        : icClockGrey),
                  ),
                ),
                const Text(
                  lbCLock,
                ),
              ],
            ),
          ),
          Tab(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 5),
                  child: Obx(
                    () => SvgPicture.asset(
                      controller.tabNumber.value == 1
                          ? icMonarchyGold
                          : icMonarchyGrey,
                    ),
                  ),
                ),
                const Text(
                  lbCLock,
                ),
              ],
            ),
          )
        ]);
  }
}
