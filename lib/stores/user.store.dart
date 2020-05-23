import 'dart:ffi';

import 'package:mobx/mobx.dart';

part 'user.store.g.dart';

class UserStore = _UserStore with _$UserStore;

abstract class _UserStore with Store {
  @observable
  String strLogin;

  @observable
  String strPassword;

  @observable
  String strDisplayName;

  @observable
  String strCep;

  @observable
  String strAddress;

  void setUser(String login, String password, String displayName, String cep, String address) {
    strLogin = login;
    strPassword = password;
    strDisplayName = displayName;
    strCep = cep;
    strAddress = address;
  }
}
