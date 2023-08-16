import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

final _audioPlayer = AudioPlayer();

Widget newButton(MaterialColor backgroundColor, IconData icon,
    String buttonName, String funcao) {
  return ElevatedButton(
    onPressed: () {
      choice(funcao);
      _playSound();
    },
    style: ElevatedButton.styleFrom(
      backgroundColor: backgroundColor,
      minimumSize: const Size(double.infinity, 240),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: Colors.white,
          size: 72,
        ),
        Text(
          buttonName,
          style: const TextStyle(
              color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ],
    ),
  );
}

void choice(String choice) {
  switch (choice) {
    case "Printar":
      print('Banana');
      break;
    case "Comer":
      print('Arroz');
      break;
  }
}

final List<String> choices = [
  'Printar',
  'Comer',
  'Printar',
  'Comer',
  'Printar',
  'Comer',
  'Printar',
  'Comer',
  'Printar',
  'Comer',
  'Printar',
  'Comer',
  'Printar',
  'Comer',
];

final List<MaterialColor> cores = [
  Colors.red,
  Colors.blue,
  Colors.orange,
  Colors.blueGrey,
  Colors.amber,
  Colors.green,
  Colors.purple,
  Colors.red,
  Colors.blue,
  Colors.orange,
  Colors.blueGrey,
  Colors.amber,
  Colors.green,
  Colors.purple,
];

final List<IconData> icones = [
  Icons.favorite,
  Icons.star,
  Icons.shopping_cart,
  Icons.camera,
  Icons.alarm,
  Icons.email,
  Icons.music_note,
  Icons.directions_car,
  Icons.phone,
  Icons.home,
  Icons.air,
  Icons.restaurant,
];

final List<String> nomesIcones = [
  'Favorito',
  'Estrela',
  'Carrinho',
  'Câmera',
  'Alarme',
  'Email',
  'Nota',
  'Carro',
  'Telefone',
  'Casa',
  'Ar',
  'Restaurante',
];

void _playSound() async {
  await _audioPlayer.play(DeviceFileSource('lib/trombeta.mp3'));
}
