import 'dart:io';

class Enviroment {
  static String apiUrl = Platform.isAndroid
      ? 'https://ad218e92560e.ngrok.io/api'
      : 'http//localhost:3000/api';

  static String socketUrl = Platform.isAndroid
      ? 'https://ad218e92560e.ngrok.io'
      : 'http//localhost:3000';
}
