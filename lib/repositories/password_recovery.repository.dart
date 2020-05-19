import 'package:tennis_play_all/utils/constants.dart';
import 'package:http/http.dart' as http;
import 'package:tennis_play_all/view-models/password_recovery.view-model.dart';

class PasswordRecoveryRepository {

  Future<bool> post(PasswordRecoveryViewModel passwordRecoveryViewModel) async =>
      (_getResponseBody(await http.post(API_URL + '/auth/recover',
          headers: _createHeader(), body: passwordRecoveryViewModel.toJson())));

  Map<String, String> _createHeader() => ({"Content-type": "application/json"});

  // TO-DO: refatorar após tratativa do response.statusCode pelo PHP (CodeIgniter).
  bool _getResponseBody(http.Response response) {
    if (response.statusCode == 200) {
      return true;
    } else {
      throw Exception('Error - API');
    }
  }

}
