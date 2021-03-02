import 'dart:io';

class Enviroment {
  static String apiUrl = Platform.isAndroid
      ? 'https://5a04d62e23cf.ngrok.io/api'
      : 'http//localhost:3000/api';

  static String socketUrl = Platform.isAndroid
      ? 'https://5a04d62e23cf.ngrok.io'
      : 'http//localhost:3000';
}
