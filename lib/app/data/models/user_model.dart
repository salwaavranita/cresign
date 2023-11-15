// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);

import 'dart:convert';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
  String? name;
  String? email;
  String? photoUrl;

  UserModel({
     this.name,
     this.email,
     this.photoUrl,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
    name: json["name"],
    email: json["email"],
    photoUrl: json["photoUrl"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "email": email,
    "photoUrl": photoUrl,
  };
}
