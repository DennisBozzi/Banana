import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

//Instanciando AudioPlayer
final _audioPlayer = AudioPlayer();

//Método que retorna um Widget Elevated Button
Widget newButton(MaterialColor backgroundColor, IconData icon, String buttonName, String funcao) {
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
          style: const TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ],
    ),
  );
}

//Switch Case que te faz escolher qual método será chamado ao clicar no botão escolhido
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

//Método que da play na música
void _playSound() async {
  await _audioPlayer.stop();
  await _audioPlayer.play(DeviceFileSource('lib/trombeta.mp3'));
}
