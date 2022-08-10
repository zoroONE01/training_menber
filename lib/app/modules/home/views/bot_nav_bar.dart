library bot_nav_bar;

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:training_member/app/data/extensions/context_x.dart';

import '../../../data/constants/asset_paths.dart';
import '../../../data/constants/strings.dart';

part 'bot_nav_item.dart';

class BotNavBar extends StatelessWidget {
  const BotNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: context.colors.tertiaryContainer,
      child: Row(
        // crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          BotNavItem(label: lbHome, iconPath: icHome),
          BotNavItem(label: lbAccount, iconPath: icAccount),
          BotNavItem(label: lbSpeaker, iconPath: icSpeaker),
          BotNavItem(label: lbEvent, iconPath: icEvent),
          BotNavItem(label: lbMember, iconPath: icMember),
          BotNavItem(label: lbMessage, iconPath: icMessage),
        ],
      ),
    );
  }
}
