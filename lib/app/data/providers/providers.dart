library providers;

import 'package:flutter/material.dart';
import 'package:training_member/app/data/repositories/repositories.dart';

import '../helpers/api_helper.dart';
import '../models/member.dart';

part 'member_provider.dart';

class Providers {
  static MemberProvider get member => MemberProvider();
}
