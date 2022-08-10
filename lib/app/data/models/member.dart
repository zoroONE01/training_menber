import 'package:json_annotation/json_annotation.dart';

part 'member.g.dart';

@JsonSerializable(
)
class Member {
  String? name;
  int? age;
  String? bio;
  String? position;
  String? job;
  String? company;
  String? address;
  bool? isPremium;
  String? avatar;
  String? thumb;

  Member({
    this.name,
    this.age,
    this.bio,
    this.position,
    this.job,
    this.company,
    this.address,
    this.isPremium,
    this.avatar,
    this.thumb,
  });

  factory Member.fromJson(Map<String, dynamic> json) => _$MemberFromJson(json);

  Map<String, dynamic> toJson() => _$MemberToJson(this);

  @override
  String toString() {
    return 'Member{name: $name, age: $age, bio: $bio, position: $position, job: $job, company: $company, address: $address, isPremium: $isPremium, avatar: $avatar,}';
  }
}
