import 'package:flutter/material.dart';
import 'package:youtube_player_embed/youtube_player_embed.dart';

class Reproductor extends StatelessWidget {
  final String videoId;

  const Reproductor({super.key, required this.videoId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reproductor de Películas'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple, 
        elevation: 5, 
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.deepPurple.shade100, Colors.deepPurple.shade300],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: YoutubePlayerEmbed(
              videoId: videoId,
              customVideoTitle: 'Reproduciendo...',
              autoPlay: true,
              hidenVideoControls: false,
            ),
          ),
        ),
      ),
    );
  }
}
