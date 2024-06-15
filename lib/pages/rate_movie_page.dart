// TODO Implement this library.

import 'package:flutter/material.dart';

class RateMoviePage extends StatelessWidget {
  final String movieId; // Identificador do filme para o qual o rating será enviado

  const RateMoviePage({Key? key, required this.movieId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rate Movie'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Rate the Movie with ID: $movieId',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            // Aqui você pode adicionar componentes para o usuário inserir o rating
            // Por exemplo, um Slider, um conjunto de botões de estrela, etc.
            // Exemplo com Slider:
            Slider(
              value: 0, // Valor inicial do rating
              min: 0,
              max: 10,
              divisions: 10,
              label: 'Rating',
              onChanged: (value) {
                // Atualiza o rating conforme o usuário move o Slider
                // Implemente a lógica para armazenar o rating (pode ser em um estado local)
              },
            ),
            ElevatedButton(
              onPressed: () {
                // Implemente a lógica para enviar o rating
                // Você pode chamar um método do provider ou realizar uma requisição para enviar o rating
                // Exemplo: context.read<MovieRepository>().rateMovie(movieId, selectedRating);
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Rating submitted!'),
                  ),
                );
              },
              child: Text('Submit Rating'),
            ),
          ],
        ),
      ),
    );
  }
}

