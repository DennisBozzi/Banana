import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class NovoBotao extends StatefulWidget {
  final MaterialColor backgroundColor; // Cor de fundo do botão
  final IconData icon; // Ícone do botão
  final String buttonName; // Texto do botão
  final String funcao; // Função a ser chamada ao clicar no botão

  NovoBotao({
    required this.backgroundColor,
    required this.icon,
    required this.buttonName,
    required this.funcao,
  });

  @override
  _NovoBotaoState createState() => _NovoBotaoState();
}

class _NovoBotaoState extends State<NovoBotao> {
  final _audioPlayer = AudioPlayer();
  bool _isFocused = false;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        _toggleFocus(!_isFocused); // Alternar o estado de foco
        choice(widget.funcao); // Usando o valor do atributo funcao do widget
        _playSound();
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: widget.backgroundColor,
        // Usando o valor do atributo backgroundColor do widget
        minimumSize: _isFocused
            ? const Size(double.infinity, 480)
            : const Size(double.infinity, 240),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            widget.icon, // Usando o valor do atributo icon do widget
            color: Colors.white,
            size: 72,
          ),
          Text(
            widget.buttonName,
            // Usando o valor do atributo buttonName do widget
            style: const TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  // Alternar o estado de foco
  void _toggleFocus(bool focus) {
    setState(() {
      _isFocused = focus;
    });
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
    await _audioPlayer.play(DeviceFileSource('lib/assets/alarm.mp3'));
  }
}