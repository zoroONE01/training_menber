part of providers;

abstract class MemberBase {
  Future<List<Member>> getAllMember();

  Future<List<Member>> getMemberPremium();
}

class MemberProvider implements MemberBase {
  MemberProvider._();

  static MemberProvider? _instance;

  factory MemberProvider() => _instance ??= MemberProvider._();

  @override
  Future<List<Member>> getAllMember() async {
    try {
      final res = await ApiHelper.request('/members');
      return List<Member>.from(
        (res.data ?? []).map((json) => Member.fromJson(json)).toList(),
      );
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<Member>> getMemberPremium() async {
    try {
      final res = await ApiHelper.request(
        '/members',
        params: {'isPremium': 'true'},
      );
      return List<Member>.from(
        (res.data ?? []).map((json) => Member.fromJson(json)),
      );
    } catch (e) {
      rethrow;
    }
  }
}
