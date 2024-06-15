import 'package:flutter/material.dart';
import 'package:movie/pages/home_page.dart'; // Ajuste o caminho conforme necessário

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movies',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(title: 'TheMovieDB'),
      routes: {
        '/rate_movie': (context) => HomePage(title: '',), // Verifique se o nome está correto e o caminho de importação está correto
      },
    );
  }
}
