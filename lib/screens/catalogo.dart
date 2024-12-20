import 'package:flutter/material.dart';

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
        ),
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
      'description': 'Los Vengadores luchan contra amenazas globales.'
    },
    {
      'image': 'assets/dark_night.jpg',
      'title': 'The Dark Knight',
      'description': 'Batman enfrenta a su mayor enemigo, el Joker.'
    },
    {
      'image': 'assets/avatar.jpg',
      'title': 'Avatar',
      'description': 'Una aventura de ciencia ficción en un planeta alienígena.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 0,
        mainAxisSpacing: 0,
      ),
      itemCount: imagenes.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            // Al hacer clic en la imagen, navega a la pantalla de detalles
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PeliculaDetalle(
                  title: imagenes[index]['title']!,
                  image: imagenes[index]['image']!,
                  description: imagenes[index]['description']!,
                ),
              ),
            );
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                imagenes[index]['image']!,
                fit: BoxFit.cover,
                height: 150,
                width: 150,
              ),
              const SizedBox(height: 8),
              Text(
                imagenes[index]['title']!,
                style:
                    const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        );
      },
    );
  }
}

class PeliculaDetalle extends StatelessWidget {
  final String title;
  final String image;
  final String description;

  const PeliculaDetalle({
    super.key,
    required this.title,
    required this.image,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              image,
              fit: BoxFit.cover,
              height: 300,
              width: double.infinity,
            ),
            const SizedBox(height: 20),
            Text(
              title,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              description,
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
