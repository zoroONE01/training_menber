part of repositories;

abstract class MemberBase {
  Future<List<Member>?> getAllMember();

  Future<List<Member>?> getMemberPremium();
}

class MemberRepository implements MemberBase {
  @override
  Future<List<Member>?> getAllMember() => MemberProvider().getAllMember();

  @override
  Future<List<Member>?> getMemberPremium() =>
      MemberProvider().getMemberPremium();
}
