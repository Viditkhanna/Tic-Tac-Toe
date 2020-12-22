import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';

class SoundBloc with ChangeNotifier {
  final audioPlayer = AudioPlayer();
  AudioCache audioCache;

  SoundBloc() {
    audioCache = AudioCache(fixedPlayer: audioPlayer, prefix: 'assets/sounds/');
    audioCache.disableLog();
  }

  playUserSound() {
    audioCache.play('tic.wav');
  }

  playOpponentSound() {
    audioCache.play('tap.wav');
  }
}
