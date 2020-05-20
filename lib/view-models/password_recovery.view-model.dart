import 'dart:convert';

class PasswordRecoveryViewModel {
  String _email;
  bool _busy = false;

  String get email => _email;

  set email(String value) => _email = value;

  bool get busy => _busy;

  set busy(bool value) => _busy = value;

  String toJson() {
    final Map<String, dynamic> mapEmail = new Map<String, dynamic>();
    mapEmail['user_login'] = this._email;
    return jsonEncode(mapEmail);
  }
}