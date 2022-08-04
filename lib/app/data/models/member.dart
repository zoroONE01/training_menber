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

  Member(
      {this.name,
      this.age,
      this.bio,
      this.position,
      this.job,
      this.company,
      this.address,
      this.isPremium,
      this.avatar});

  Member.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    age = json['age'];
    bio = json['bio'];
    position = json['position'];
    job = json['job'];
    company = json['company'];
    address = json['address'];
    isPremium = json['isPremium'];
    avatar = json['avatar'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['age'] = age;
    data['bio'] = bio;
    data['position'] = position;
    data['job'] = job;
    data['company'] = company;
    data['address'] = address;
    data['isPremium'] = isPremium;
    data['avatar'] = avatar;
    return data;
  }

  @override
  String toString() {
    return 'Member{name: $name, age: $age, bio: $bio, position: $position, job: $job, company: $company, address: $address, isPremium: $isPremium, avatar: $avatar}';
  }
}
