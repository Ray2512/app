import 'package:mobx/mobx.dart';
import 'package:tennis_play_all/view-models/registeruser.view-model.dart';

part 'user.store.g.dart';

class UserStore = _UserStore with _$UserStore;

abstract class _UserStore with Store {

  RegisterUserViewModel _registerUserViewModel;

  RegisterUserViewModel get getRegisterUserViewModel => _registerUserViewModel;

  set setRegisterUserViewModel(RegisterUserViewModel registerUserViewModel) => this._registerUserViewModel = registerUserViewModel;

}
