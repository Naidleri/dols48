part of 'model.dart';

class UserModel extends Equatable {
  final int id;
  final String nickname;
  final String email;
  final String password;
  final String avatar;
  final String role;

  UserModel(
      {required this.id,
      required this.nickname,
      required this.email,
      required this.password,
      required this.avatar,
      required this.role});

  factory UserModel.fromJson(Map<String, dynamic> map) {
    return UserModel(
        id: map['id'] ?? 0,
        nickname: map['nickname'] ?? '',
        email: map['email'] ?? '',
        password: map['password'] ?? '',
        avatar: map['avatar'] ?? '',
        role: map['role'] ?? '');
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nickname': nickname,
      'email': email,
      'password': password,
      'avatar': avatar,
      'role': role,
    };
  }

  @override
  List<Object> get props => [id, nickname, email, password, avatar, role];
}
