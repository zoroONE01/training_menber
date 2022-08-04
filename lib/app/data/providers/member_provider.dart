part of providers;

abstract class MemberBase {
  Future<List<Member>?> getAllMember();
}

class MemberProvider {
  MemberProvider._();

  static final MemberProvider _instance = MemberProvider._();

  factory MemberProvider() => _instance;

  static Future<List<Member>?> getAllMember() async {
    try {
      final res = await ApiHelper.request('/members');
      return (res.data ?? []).map((json) => Member.fromJson(json)).toList();
    } catch (e) {
      rethrow;
    }
  }
}
