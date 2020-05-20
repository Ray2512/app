import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:tennis_play_all/controllers/password_recovery.controller.dart';
import 'package:tennis_play_all/repositories/password_recovery.repository.dart';
import 'package:tennis_play_all/view-models/password_recovery.view-model.dart';
import 'requiredcode.view.dart';

class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  PasswordRecoveryController _passwordRecoveryController =
      PasswordRecoveryController(PasswordRecoveryRepository());
  PasswordRecoveryViewModel _passwordRecoveryViewModel =
      PasswordRecoveryViewModel();
  TextEditingController _email = TextEditingController();
  bool _isEmailValid = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            // container do topo da tela
            Container(
              width: 128,
              height: MediaQuery.of(context).size.height * 0.6,
              padding: EdgeInsets.only(
                top: 60,
                left: 40,
                right: 40,
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.3, 1],
                  colors: [
                    Color(0xFF33691E),
                    Color(0xFF64DD17),
                  ],
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
              ),
              child: Column(children: <Widget>[
                Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 4.0,
                      color: const Color(0xFFFFFFFF),
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(60),
                    ),
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Icon(
                      Icons.https,
                      size: 90,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                SizedBox(
                  height: 30,
                  child: Text(
                    "Esqueceu sua Senha?",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 100,
                  child: Text(
                    "Por favor, informe o e-mail associado a sua conta que enviaremos um link para o mesmo com as instruções para restauração de sua conta",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ]),
            ),
            Container(
              color: Colors.white,
              height: MediaQuery.of(context).size.height * 0.4,
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 1.2,
                    height: 45,
                    padding:
                        EdgeInsets.only(top: 4, left: 16, right: 16, bottom: 4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      color: Colors.green[50],
                    ),
                    child: TextField(
                      controller: _email,
                      decoration: InputDecoration(
                        errorText: _isEmailValid ? null : 'E-mail inválido',
                        border: InputBorder.none,
                        icon: Icon(
                          Icons.email,
                          color: Colors.grey,
                        ),
                        hintText: 'Email',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  _passwordRecoveryViewModel.busy
                      ? Center(
                          child: Container(
                            child: CircularProgressIndicator(
                              valueColor: new AlwaysStoppedAnimation<Color>(
                                  Colors.green),
                              backgroundColor: Colors.white,
                            ),
                          ),
                        )
                      : Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width / 1.2,
                          alignment: Alignment.centerLeft,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              stops: [0.3, 1],
                              colors: [
                                Color(0xFF33691E),
                                Color(0xFF64DD17),
                              ],
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          child: SizedBox.expand(
                            child: FlatButton(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    "Solicitar Link",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.white,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                              onPressed: () async {
                                _passwordRecoveryViewModel.email =
                                    _email.text.trim();
                                _isEmailValid =
                                    _passwordRecoveryController.validateEmail(
                                        _passwordRecoveryViewModel.email);
                                if (_isEmailValid) {
                                  setState(() {
                                    _passwordRecoveryViewModel.busy = true;
                                  });
                                  try {
                                    if (await _passwordRecoveryController
                                        .post(_passwordRecoveryViewModel))
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              RequiredCodePage(),
                                        ),
                                      );
                                  } catch (e) {
                                    Fluttertoast.showToast(
                                        gravity: ToastGravity.CENTER,
                                        msg:
                                            "Não foi possível enviar código de validação.");
                                  }
                                  setState(() {
                                    _passwordRecoveryViewModel.busy = false;
                                  });
                                } else {
                                  setState(() {});
                                }
                              },
                            ),
                          ),
                        ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
