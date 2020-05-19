import 'dart:convert';

class PasswordRecoveryViewModel {
  String _email;

  String get email => _email;

  set email(String value) => _email = value;

  String toJson() {
    final Map<String, dynamic> mapEmail = new Map<String, dynamic>();
    mapEmail['user_login'] = this._email;
    return jsonEncode(mapEmail);
  }
}