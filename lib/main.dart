import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:movie/app.dart';
import 'package:provider/provider.dart'; // Importe o pacote dotenv

void main() async {
  await dotenv.load(fileName: ".env"); // Carrega as variáveis de ambiente do arquivo .env

  runApp(
    MultiProvider(
      providers: [
        // Seus providers aqui...
      ],
      child: App(),
    ),
  );
}
