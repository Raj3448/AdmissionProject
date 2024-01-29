part of 'user_details_dto.dart';

UserDetailsDto _$UserDetailsDtoFromJson(Map<String, dynamic> json) =>
    UserDetailsDto(
      mail: json['mail'] as String,
      passcode: json['passCode'] as String,
      firstname: json['firstName'] as String,
      lastname: json['lastName'] as String,
      phoneno: json['phoneNumber'] as String,
      gender: json['gender'] as String,
      age: json['age'] as String,
      qid: json['qid'] as String,
      answer: json['answer'] as String,
      address: json['address'] as String,
    );

Map<String, dynamic> _$UserDetailsDtoToJson(UserDetailsDto instance) =>
    <String, dynamic>{
      'mail': instance.mail,
      'passcode': instance.passcode,
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'phoneno': instance.phoneno,
      'gender': instance.gender,
      'age': instance.age,
      'qid': instance.qid,
      'answer': instance.answer,
      'address': instance.address,
    };
