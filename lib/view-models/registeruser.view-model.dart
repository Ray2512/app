import 'dart:convert';

class RegisterUserViewModel {
  String _email;
  String _name;
  String _address;
  String _cep;
  String _password;
  String _phone;
  bool _busy = false;

  set email(String value) => _email = value;

  set name(String value) => _name = value;

  set address(String value) => _address = value;

  set cep(String value) => _cep = value;

  set password(String value) => _password = value;

  set phone(String value) => _phone = value;

  set busy(bool value) => _busy = value;

  bool get busy => _busy;

  String toJson() {
    final Map<String, dynamic> mapLogin = new Map<String, dynamic>();
    mapLogin['user_login'] = this._email;
    mapLogin['user_password'] = this._password;
    mapLogin['user_display_name'] = this._name;
    mapLogin['user_zip_code'] = this._cep;
    mapLogin['user_address'] = this._address;
    mapLogin['user_phone_number'] = this._phone;
    return jsonEncode(mapLogin);
  }
}
