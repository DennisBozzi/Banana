import 'package:banana/lists.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class NovoBotao extends StatefulWidget {
  final MaterialColor backgroundColor;
  final IconData icon;
  final String buttonName;
  final int musica;

  NovoBotao({
    required this.backgroundColor,
    required this.icon,
    required this.buttonName,
    required this.musica
  });

  @override
  _NovoBotaoState createState() => _NovoBotaoState();
}

class _NovoBotaoState extends State<NovoBotao> {
  final _audioPlayer = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: widget.backgroundColor),
      onPressed: () {
        _playSound();
        _showModal(context);
      },
      child: SizedBox(
        width: double.infinity,
        height: 240,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              widget.icon,
              size: 70,
            ),
            Text(
              widget.buttonName,
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }

  //Método que da play na música
  void _playSound() async {
    await _audioPlayer.setReleaseMode(ReleaseMode.loop);
    await _audioPlayer.stop();
    await _audioPlayer.play(DeviceFileSource(musica(widget.musica)));
  }

  void _showModal(BuildContext context) {
    showCupertinoModalPopup(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return Center(
          child: Padding(
            padding: const EdgeInsets.all(36.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
                _audioPlayer.stop();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: widget.backgroundColor,
                minimumSize: const Size(double.infinity, double.infinity),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    widget.icon,
                    size: 200,
                  ),
                  Text(
                    widget.buttonName,
                    style: const TextStyle(fontSize: 76),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
