import '../../domain/entities/user.dart';

class UserModel extends User {
  const UserModel();

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return const UserModel();
  }
}
