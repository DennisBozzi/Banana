import 'package:flutter/material.dart';

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

final List<String> musicas = [
  "lib/assets/trombeta.mp3",
  "lib/assets/alarm.mp3",
  "lib/assets/clock1.mp3",
  "lib/assets/loudalarm.mp3",
  "lib/assets/wtf.mp3",
  "lib/assets/la_cucaracha.mp3",
  "lib/assets/schnapps_alarm.mp3",
  "lib/assets/sa7ii_elnoum.mp3",
  "lib/assets/avast_alarm.mp3",
  "lib/assets/workout_alarm.mp3",
  "lib/assets/ring_wacky_alarm.mp3",
  "lib/assets/alarm (1).mp3",
];

String musica(int i) {
  switch (i) {
    case 0:
      return musicas[0];
    case 1:
      return musicas[1];
    case 2:
      return musicas[2];
    case 3:
      return musicas[3];
    case 4:
      return musicas[4];
    case 5:
      return musicas[5];
    case 6:
      return musicas[6];
    case 7:
      return musicas[7];
    case 8:
      return musicas[8];
    case 9:
      return musicas[9];
    case 10:
      return musicas[10];
    case 11:
      return musicas[11];
    default:
      return musicas[0];
  }
}
