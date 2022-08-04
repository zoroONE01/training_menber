part of repositories;

abstract class MemberBase {
  Future<List<Member>?> getAllMember();
  Future<void> getUser();
}

class MemberRepository implements MemberBase {
  @override
  Future<List<Member>?> getAllMember() => MemberProvider.getAllMember();

  @override
  Future<void> getUser() {
    // TODO: implement getUser
    throw UnimplementedError();
  }
}


