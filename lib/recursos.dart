import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Recursos extends StatefulWidget {
  final String videoId = 'h7PagwvOozo'; 
  const Recursos({Key? key}) : super(key: key);

  @override
  State<Recursos> createState() => _RecursosState();
}

class _RecursosState extends State<Recursos> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: widget.videoId.toString(),
      flags: const YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
        
      ),
    )..addListener(_onPlayerStateChange);
  }

  void _onPlayerStateChange() {
    if (_controller.value.playerState == PlayerState.playing) {
      // Puedes hacer algo cuando el video esté reproduciéndose aquí
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Recursos',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SingleChildScrollView( 
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 15),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'A continuación te presentamos algunos recursos que te podrían ser útiles en este proceso',
                style: TextStyle(fontSize: 16),
              ),
            ),
            const SizedBox(height: 25),
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Text(
                  'Videos',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            SizedBox(height: 5),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0), 
                  color: Colors.grey[300],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12.0),
                  child: YoutubePlayer(controller: _controller),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Text(
                  'Imagenes',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: SizedBox(
                    height: 170.0,
                    width: 170.0,
                    child: Image.asset('assets/Imagen1.jpg'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 20.0),
                  child: SizedBox(
                    height: 170.0,
                    width: 170.0,
                    child: Image.asset('assets/Imagen2.jpg'),
                  ),
                ),
              ],
            ),
            SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 1.0),
                  child: SizedBox(
                    height: 190.0,
                    width: 330.0,
                    child: Image.asset('assets/Imagen3.jpg'),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20), // Agregar espacio al final para evitar que el contenido esté demasiado cerca del borde inferior
          ],
        ),
      ),
    );
  }
}
