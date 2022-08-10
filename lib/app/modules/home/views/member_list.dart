library member_list;

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:training_member/app/data/extensions/context_x.dart';

import '../../../data/models/member.dart';

part 'item_member.dart';

class MemberList extends StatelessWidget {
  const MemberList({
    Key? key,
    required this.list,
  }) : super(key: key);

  final List<Member> list;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, crossAxisSpacing: 10, childAspectRatio: 1.4),
      padding: const EdgeInsets.all(10),
      itemBuilder: (context, index) => ItemMember(
        member: list[index],
        index: index,
      ),
      itemCount: list.length,
    );
  }
}
