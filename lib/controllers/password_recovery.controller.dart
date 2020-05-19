import 'package:tennis_play_all/repositories/password_recovery.repository.dart';
import 'package:tennis_play_all/view-models/password_recovery.view-model.dart';

class PasswordRecoveryController {

  PasswordRecoveryRepository _passwordRecoveryRepository;

  PasswordRecoveryController(PasswordRecoveryRepository passwordRecoveryRepository){
    this._passwordRecoveryRepository = passwordRecoveryRepository;
  }

  Future<bool> post(PasswordRecoveryViewModel passwordRecoveryViewModel) async {
    return(await _passwordRecoveryRepository.post(passwordRecoveryViewModel));
  } 

  bool validateEmail(String text) {
    // TO-DO: case sensitive (text) - adapt it.
    RegExp regex = new RegExp(r"^[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$");
    if (regex.hasMatch(text)) {
      return true;
    } else {
      return false;
    }
  }

}