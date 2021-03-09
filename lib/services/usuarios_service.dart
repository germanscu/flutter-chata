import 'package:flutter_chat/models/usuarios_response.dart';

import '../global/enviroment.dart';
import '../models/usuario.dart';

import 'package:http/http.dart' as http;
import 'auth_service.dart';

class UsuarioService {
  Future<List<Usuario>> getUsuarios() async {
    try {
      final resp = await http.get('${Enviroment.apiUrl}/usuarios', headers: {
        'Content-Type': 'application/json',
        'x-token': await AuthService.getToken()
      });

      final usuariosResponse = usuariosResponseFromJson(resp.body);

      return usuariosResponse.usuarios;
    } catch (e) {
      return [];
    }
  }
}
