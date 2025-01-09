import 'package:flutter/material.dart';
import 'package:taller1/navigation/drawer.dart';
import 'reproductor.dart';

class Catalogo extends StatelessWidget {
  const Catalogo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Catálogo de Películas'),
          centerTitle: true,
          backgroundColor: Colors.deepPurple, 
          elevation: 5, 
        ),
        drawer: MiDrawer(),
        body: Imagenes(),
      ),
    );
  }
}

class Imagenes extends StatelessWidget {
  Imagenes({super.key});

  final List<Map<String, String>> imagenes = [
    {
      'image': 'assets/avengers.jpeg',
      'title': 'Avengers',
      'description': 'Un grupo de superhéroes...',
      'videoId': 'eOrNdBpGMv8',
    },
    {
      'image': 'assets/dark_night.jpg',
      'title': 'The Dark Knight',
      'description': 'Bruce Wayne, como Batman...',
      'videoId': '_PZpmTj1Q8Q',
    },
    {
      'image': 'assets/avatar.jpg',
      'title': 'Avatar',
      'description': 'En un futuro lejano...',
      'videoId': 'a8Gx8wiNbs8',
    },
    {
      'image': 'assets/inception.jpg',
      'title': 'Inception',
      'description': 'Dom Cobb, un ladrón...',
      'videoId': 'YoHD9XEInc0',
    },
    {
      'image': 'assets/cuestion_tiempo.jpg',
      'title': 'Cuestion de Tiempo',
      'description': 'Después de otra fiesta...',
      'videoId': '5DQAZtFHLEA',
    },
    {
      'image': 'assets/mario.jpg',
      'title': 'Mario Bros',
      'description': 'Mario y Luigi...',
      'videoId': '4ODf1kmMXig',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, 
          crossAxisSpacing: 10, 
          mainAxisSpacing: 10, 
          childAspectRatio: 0.7,
        ),
        itemCount: imagenes.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PeliculaDetalle(
                    title: imagenes[index]['title']!,
                    image: imagenes[index]['image']!,
                    description: imagenes[index]['description']!,
                    videoId: imagenes[index]['videoId']!,
                  ),
                ),
              );
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12), 
                    child: Image.asset(
                      imagenes[index]['image']!,
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  imagenes[index]['title']!,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87, 
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class PeliculaDetalle extends StatelessWidget {
  final String title;
  final String image;
  final String description;
  final String videoId;

  const PeliculaDetalle({
    super.key,
    required this.title,
    required this.image,
    required this.description,
    required this.videoId,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
        backgroundColor: Colors.deepPurple, 
        elevation: 5, 
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: size.width,
                height: size.height * 0.4, 
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16), 
                  image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple, 
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              Text(
                description,
                style: const TextStyle(fontSize: 16, height: 1.5),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Reproductor(videoId: videoId),
                        ),
                      );
                    },
                    child: const Text('Ver Película'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple, 
                      foregroundColor: Colors.white, 
                      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                      textStyle: const TextStyle(fontSize: 16),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Catalogo(),
                      ),
                    ),
                    child: const Text('Regresar'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey, 
                      foregroundColor: Colors.black, 
                      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                      textStyle: const TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
