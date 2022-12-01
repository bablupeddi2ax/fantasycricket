import 'dart:convert';
/// jwt : "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MzUsImlhdCI6MTY2OTkwNzY3NSwiZXhwIjoxNjcyNDk5Njc1fQ.m7YR69PPauunVEYIaejuq3A7chjA6lSQa2TxEWjBaiA"
/// user : {"id":35,"username":"uddgfwwgeeedser1","email":"hegbdddewweddy@gmail.com","provider":"local","confirmed":true,"blocked":false,"createdAt":"2022-12-01T15:14:34.908Z","updatedAt":"2022-12-01T15:14:34.908Z","Role":"[object Object]","phone":"0","roleofuser":"user"}

Register registerFromJson(String str) => Register.fromJson(json.decode(str));
String registerToJson(Register data) => json.encode(data.toJson());
class Register {
  Register({
      this.jwt, 
      this.user,});

  Register.fromJson(dynamic json) {
    jwt = json['jwt'];
    user = json['user'] != null ? User.fromJson(json['user']) : null;
  }
  String jwt;
  User user;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['jwt'] = jwt;
    if (user != null) {
      map['user'] = user.toJson();
    }
    return map;
  }

}

/// id : 35
/// username : "uddgfwwgeeedser1"
/// email : "hegbdddewweddy@gmail.com"
/// provider : "local"
/// confirmed : true
/// blocked : false
/// createdAt : "2022-12-01T15:14:34.908Z"
/// updatedAt : "2022-12-01T15:14:34.908Z"
/// Role : "[object Object]"
/// phone : "0"
/// roleofuser : "user"

User userFromJson(String str) => User.fromJson(json.decode(str));
String userToJson(User data) => json.encode(data.toJson());
class User {
  User({
      this.id, 
      this.username, 
      this.email, 
      this.provider, 
      this.confirmed, 
      this.blocked, 
      this.createdAt, 
      this.updatedAt, 
      this.role, 
      this.phone, 
      this.roleofuser,});

  User.fromJson(dynamic json) {
    id = json['id'];
    username = json['username'];
    email = json['email'];
    provider = json['provider'];
    confirmed = json['confirmed'];
    blocked = json['blocked'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    role = json['Role'];
    phone = json['phone'];
    roleofuser = json['roleofuser'];
  }
  int id;
  String username;
  String email;
  String provider;
  bool confirmed;
  bool blocked;
  String createdAt;
  String updatedAt;
  String role;
  String phone;
  String roleofuser;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['username'] = username;
    map['email'] = email;
    map['provider'] = provider;
    map['confirmed'] = confirmed;
    map['blocked'] = blocked;
    map['createdAt'] = createdAt;
    map['updatedAt'] = updatedAt;
    map['Role'] = role;
    map['phone'] = phone;
    map['roleofuser'] = roleofuser;
    return map;
  }

}