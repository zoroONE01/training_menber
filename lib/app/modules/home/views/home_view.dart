import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../data/constants/app_styles.dart';
import '../../../data/constants/constants.dart';
import '../controllers/home_controller.dart';
import 'item_member.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Constants.colors.cultured1,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Constants.colors.cultured1,
            elevation: 0,
            flexibleSpace: Align(
              alignment: Alignment.center,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(AppPaths.icBack),
                    ),
                    SvgPicture.asset(AppPaths.icNBiz),
                    IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(AppPaths.icSetting),
                    ),
                  ]),
            ),
            // leadingWidth: 12,
          ),
          body: Column(
            children: [
              Container(
                color: Constants.colors.platinum,
                padding:
                    const EdgeInsets.symmetric(vertical: 3, horizontal: 11),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: SvgPicture.asset(AppPaths.icSearch),
                        onPressed: () {},
                      ),
                      Text(
                        Constants.strings.lbSearch,
                        style: AppStyles.lbSearch,
                      ),
                    ]),
              ),
              Obx(
                () => DefaultTabController(
                  initialIndex: controller.tabNumber.value,
                  length: 2,
                  child: Expanded(
                    child: Column(
                      children: [
                        TabBar(
                            isScrollable: true,
                            onTap: (value) {
                              if (controller.tabNumber.value != value) {
                                controller.tabNumber.value = value;
                                controller.fetchData();
                              }
                            },
                            labelColor: Constants.colors.royalBlueDark,
                            labelStyle: AppStyles.lbSortEnable,
                            unselectedLabelColor: Constants.colors.spanishGray,
                            unselectedLabelStyle: AppStyles.lbSortDisable,
                            indicatorColor: Colors.transparent,
                            tabs: [
                              Tab(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right: 5),
                                      child: Obx(
                                        () => SvgPicture.asset(
                                            controller.tabNumber.value == 0
                                                ? AppPaths.icClockOrange
                                                : AppPaths.icClockGrey),
                                      ),
                                    ),
                                    Text(
                                      Constants.strings.lbCLock,
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
                                                ? AppPaths.icMonarchyGold
                                                : AppPaths.icMonarchyGrey),
                                      ),
                                    ),
                                    Text(
                                      Constants.strings.lbCLock,
                                    ),
                                  ],
                                ),
                              )
                            ]),
                        Container(
                          color: Constants.colors.prussianBlue50,
                          height: 0.5,
                        ),
                        Expanded(
                          child: Obx(
                            () {
                              return controller.isLoading.value
                                  ? const Center(
                                      child: CircularProgressIndicator())
                                  : TabBarView(
                                      physics:
                                          const NeverScrollableScrollPhysics(),
                                      children: [
                                        controller.members.isNotEmpty
                                            ? GridView.builder(
                                                gridDelegate:
                                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                                        crossAxisCount: 2,
                                                        crossAxisSpacing: 10,
                                                        childAspectRatio: 1.4),
                                                padding:
                                                    const EdgeInsets.all(10),
                                                itemBuilder: (context, index) =>
                                                    ItemMember(
                                                  controller: controller,
                                                  index: index,
                                                ),
                                                itemCount:
                                                    controller.members.length,
                                              )
                                            : const Text('No data'),
                                        controller.members.isNotEmpty
                                            ? GridView.builder(
                                                gridDelegate:
                                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                                        crossAxisCount: 2,
                                                        crossAxisSpacing: 10,
                                                        childAspectRatio: 1.4),
                                                padding:
                                                    const EdgeInsets.all(10),
                                                itemBuilder: (context, index) =>
                                                    ItemMember(
                                                  controller: controller,
                                                  index: index,
                                                ),
                                                itemCount:
                                                    controller.members.length,
                                              )
                                            : const Text('No data'),
                                        //
                                      ],
                                    );
                            },
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

class BotNavBar extends StatelessWidget {
  const BotNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Constants.colors.cultured1,
      height: 70,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          BotNavItem(
              label: Constants.strings.lbHome, iconPath: AppPaths.icHome),
          BotNavItem(
              label: Constants.strings.lbAccount, iconPath: AppPaths.icAccount),
          BotNavItem(
              label: Constants.strings.lbSpeaker, iconPath: AppPaths.icSpeaker),
          BotNavItem(
              label: Constants.strings.lbEvent, iconPath: AppPaths.icEvent),
          BotNavItem(
              label: Constants.strings.lbMember, iconPath: AppPaths.icMember),
          BotNavItem(
              label: Constants.strings.lbMessage, iconPath: AppPaths.icMessage),
        ],
      ),
    );
  }
}

class BotNavItem extends StatelessWidget {
  final String label;
  final String iconPath;

  const BotNavItem({
    Key? key,
    required this.label,
    required this.iconPath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Material(
        color: Constants.colors.cultured1,
        child: InkWell(
          onTap: () {},
          child: Column(children: [
            const SizedBox(
              height: 10,
            ),
            Expanded(
              flex: 1,
              child: SvgPicture.asset(iconPath),
            ),
            Expanded(
              flex: 1,
              child: Center(
                child: Text(
                  label,
                  style: AppStyles.lbBotNav,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
