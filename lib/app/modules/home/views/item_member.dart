import 'package:flutter/material.dart';

import '../../../data/constants/app_styles.dart';
import '../../../data/constants/constants.dart';
import '../controllers/home_controller.dart';

class ItemMember extends StatelessWidget {
  const ItemMember({
    Key? key,
    required this.controller,
    this.index,
  }) : super(key: key);

  final HomeController controller;
  final index;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            Expanded(
              flex: 1,
              child: CircleAvatar(
                backgroundColor: Constants.colors.silver,
                radius: 26,
                backgroundImage: NetworkImage(controller
                        .members[index].avatar ??
                    'https://en.m.wikipedia.org/wiki/File:Sample_User_Icon.png'),
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        flex: 3,
                        child: Text(
                          controller.members[index].name ?? '',
                          maxLines: 1,
                          style: AppStyles.name,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Text(
                          '${controller.members[index].age}歳',
                          style: AppStyles.age,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        flex: 1,
                        child: Text(
                          controller.members[index].position ?? '',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: AppStyles.body1,
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Text(
                          controller.members[index].job ?? '',
                          style: AppStyles.body2,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    controller.members[index].company ?? '',
                    style: AppStyles.body2,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                  Text(
                    controller.members[index].address ?? '',
                    style: AppStyles.body1,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                ],
              ),
            ),
          ],
        ),
        Container(
          margin: const EdgeInsets.only(top: 10),
          padding: const EdgeInsets.symmetric(horizontal: 10),
          height: 38,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(width: 0.3, color: Constants.colors.cinnabar)),
          child: Center(
            child: Text(
              controller.members[index].bio ?? '',
              maxLines: 2,
              style: AppStyles.bio,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
      ],
    );
  }
}
