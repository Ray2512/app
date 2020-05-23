// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$UserStore on _UserStore, Store {
  final _$strLoginAtom = Atom(name: '_UserStore.strLogin');

  @override
  String get strLogin {
    _$strLoginAtom.context.enforceReadPolicy(_$strLoginAtom);
    _$strLoginAtom.reportObserved();
    return super.strLogin;
  }

  @override
  set strLogin(String value) {
    _$strLoginAtom.context.conditionallyRunInAction(() {
      super.strLogin = value;
      _$strLoginAtom.reportChanged();
    }, _$strLoginAtom, name: '${_$strLoginAtom.name}_set');
  }

  final _$strPasswordAtom = Atom(name: '_UserStore.strPassword');

  @override
  String get strPassword {
    _$strPasswordAtom.context.enforceReadPolicy(_$strPasswordAtom);
    _$strPasswordAtom.reportObserved();
    return super.strPassword;
  }

  @override
  set strPassword(String value) {
    _$strPasswordAtom.context.conditionallyRunInAction(() {
      super.strPassword = value;
      _$strPasswordAtom.reportChanged();
    }, _$strPasswordAtom, name: '${_$strPasswordAtom.name}_set');
  }

  final _$strDisplayNameAtom = Atom(name: '_UserStore.strDisplayName');

  @override
  String get strDisplayName {
    _$strDisplayNameAtom.context.enforceReadPolicy(_$strDisplayNameAtom);
    _$strDisplayNameAtom.reportObserved();
    return super.strDisplayName;
  }

  @override
  set strDisplayName(String value) {
    _$strDisplayNameAtom.context.conditionallyRunInAction(() {
      super.strDisplayName = value;
      _$strDisplayNameAtom.reportChanged();
    }, _$strDisplayNameAtom, name: '${_$strDisplayNameAtom.name}_set');
  }

  final _$strCepAtom = Atom(name: '_UserStore.strCep');

  @override
  String get strCep {
    _$strCepAtom.context.enforceReadPolicy(_$strCepAtom);
    _$strCepAtom.reportObserved();
    return super.strCep;
  }

  @override
  set strCep(String value) {
    _$strCepAtom.context.conditionallyRunInAction(() {
      super.strCep = value;
      _$strCepAtom.reportChanged();
    }, _$strCepAtom, name: '${_$strCepAtom.name}_set');
  }

  final _$strAddressAtom = Atom(name: '_UserStore.strAddress');

  @override
  String get strAddress {
    _$strAddressAtom.context.enforceReadPolicy(_$strAddressAtom);
    _$strAddressAtom.reportObserved();
    return super.strAddress;
  }

  @override
  set strAddress(String value) {
    _$strAddressAtom.context.conditionallyRunInAction(() {
      super.strAddress = value;
      _$strAddressAtom.reportChanged();
    }, _$strAddressAtom, name: '${_$strAddressAtom.name}_set');
  }

  @override
  String toString() {
    final string =
        'strLogin: ${strLogin.toString()},strPassword: ${strPassword.toString()},strDisplayName: ${strDisplayName.toString()},strCep: ${strCep.toString()},strAddress: ${strAddress.toString()}';
    return '{$string}';
  }
}
