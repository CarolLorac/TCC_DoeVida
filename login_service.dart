import 'dart:convert';

import 'package:app_doevida/banco_dados/routes.dart';
import 'package:http/http.dart' as http;

class LoginService{
  realizarLogin(String email, String password) async{
    http.Response response= await http.post(Routes.urlLogin, 
    body: json.encode({'email':email,'password':password,'returnSecureToken':true})
    );
    print(response.statusCode);
    print(response.body);
  }
}