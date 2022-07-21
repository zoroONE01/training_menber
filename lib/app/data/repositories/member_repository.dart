import 'package:training_member/app/data/helpers/api_helper.dart';

import '../models/member.dart';

class MemberRepository {
  Future<List<Member>?> getAllMember() async {
    var jsons = await ApiHelper().getAll();
    if (jsons != null) {
      return jsons.map((json) => Member.fromJson(json)).toList();
    } else {
      return null;
    }
  }

  Future<List<Member>?> getPremiumMember() async {
    var jsons = await ApiHelper().getPremium();
    if (jsons != null) {
      return jsons.map((json) => Member.fromJson(json)).toList();
    } else {
      return null;
    }
  }
}
