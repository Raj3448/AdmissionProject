import 'package:json_annotation/json_annotation.dart';

part 'user_details_dto.g.dart';

@JsonSerializable()
class UserDetailsDto {
  @JsonKey(name: "mail")
  final String mail;
  @JsonKey(name: "passcode")
  final String passcode;
  @JsonKey(name: "firstname")
  final String firstname;
  @JsonKey(name: "lastname")
  final String lastname;
  @JsonKey(name: "phoneno")
  final String phoneno;
  @JsonKey(name: "gender")
  final String gender;
  @JsonKey(name: "age")
  final String age;
  @JsonKey(name: "qid")
  final String qid;
  @JsonKey(name: "answer")
  final String answer;
  @JsonKey(name: "address")
  final String address;

  UserDetailsDto({
    required this.mail,
    required this.passcode,
    required this.firstname,
    required this.lastname,
    required this.phoneno,
    required this.gender,
    required this.age,
    required this.qid,
    required this.answer,
    required this.address,
  });

  factory UserDetailsDto.fromJson(Map<String, dynamic> json) =>
      _$UserDetailsDtoFromJson(json);

  Map<String, dynamic> toJson() => _$UserDetailsDtoToJson(this);
}