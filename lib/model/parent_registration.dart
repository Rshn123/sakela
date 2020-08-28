class ParentRegistration {
  String name;
  String nickname;
  String dateOfBirth;
  String seasonFallOn2020;
  String gender;
  String childLegalInformation;

  ParentRegistration(
      {this.name,
      this.nickname,
      this.dateOfBirth,
      this.seasonFallOn2020,
      this.gender,
      this.childLegalInformation});

  ParentRegistration.fromMap(Map snapshot)
      : name = snapshot['name'] ?? '',
        nickname = snapshot['nickname'] ?? '',
        dateOfBirth = snapshot['dateOfBirth'] ?? '',
        seasonFallOn2020 = snapshot['seasonFallOn2020'] ?? '',
        gender = snapshot['gender'] ?? '',
        childLegalInformation = snapshot['childLegalInformation'];

  toJson() {
    return {
      "name": name,
      "nickname": nickname,
      "dateOfBirth": dateOfBirth,
      "seasonFallOn2020": seasonFallOn2020,
      "gender": gender,
      "childLegalInformation": childLegalInformation
    };
  }
}
