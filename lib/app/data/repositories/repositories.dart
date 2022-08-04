library repositories;

import '../models/member.dart';
import '../providers/providers.dart';

part 'member_repository.dart';

class Repositories {
  static MemberRepository get member => MemberRepository();
}
