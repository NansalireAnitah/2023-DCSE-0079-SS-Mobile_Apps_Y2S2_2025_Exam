import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.light,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const MockupScreenTwo(),
    );
  }
}

class MockupScreenTwo extends StatelessWidget {
  const MockupScreenTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
              child: Stack(
                children: [
                  Image.asset(
                    'assets/images/jumangi.jpg',
                    width: double.infinity,
                    height: 400,
                    fit: BoxFit.cover,
                    errorBuilder:
                        (context, error, stackTrace) => Container(
                          color: Colors.grey[300],
                          height: 400,
                          child: const Icon(Icons.error, color: Colors.red),
                        ),
                  ),
                  Container(
                    height: 400,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          Colors.black.withOpacity(0.8),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 40,
                    left: 0,
                    right: 0,
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          child: Text(
                            'Jumanji:The Next Level',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 6,
                          ),
                          child: const Text(
                            'Action • Adventure • Comedy • Fantasy',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),

            // Popular Movies Section
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Whats Popular',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              height: 220,
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                scrollDirection: Axis.horizontal,
                children: const [
                  MovieCard(
                    title: 'Birds of Prey',
                    imageAsset: 'assets/images/movie1.jpg',
                    rating: 8.5,
                  ),
                  MovieCard(
                    title: 'Red Sparrow',
                    imageAsset: 'assets/images/movie2.jpg',
                    rating: 8.2,
                  ),
                  MovieCard(
                    title: 'Avatar 2',
                    imageAsset: 'assets/images/movie3.jpg',
                    rating: 7.9,
                  ),
                  MovieCard(
                    title: 'Top Gun: Maverick',
                    imageAsset: 'assets/images/movie4.jpg',
                    rating: 8.7,
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Now Playing',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              height: 220,
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                scrollDirection: Axis.horizontal,
                children: const [
                  MovieCard(
                    title: 'To All Boys: P.S. I still Love you',
                    imageAsset: 'assets/images/movie1.jpg',
                    rating: 9.0,
                  ),
                  MovieCard(
                    title: 'Ford and Ferrari',
                    imageAsset: 'assets/images/movie2.jpg',
                    rating: 7.5,
                  ),
                  MovieCard(
                    title: 'Mission: Impossible',
                    imageAsset: 'assets/images/movie3.jpg',
                    rating: 8.3,
                  ),
                  MovieCard(
                    title: 'Guardians Vol.3',
                    imageAsset: 'assets/images/movie4.jpg',
                    rating: 8.1,
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),

            // Recommended Section
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Recommended for You',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              height: 220,
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                scrollDirection: Axis.horizontal,
                children: const [
                  MovieCard(
                    title: 'Inception',
                    imageAsset: 'assets/images/movie1.jpg',
                    rating: 8.8,
                  ),
                  MovieCard(
                    title: 'The Dark Knight',
                    imageAsset: 'assets/images/movie2.jpg',
                    rating: 9.1,
                  ),
                  MovieCard(
                    title: 'Tenet',
                    imageAsset: 'assets/images/movie3.jpg',
                    rating: 7.8,
                  ),
                  MovieCard(
                    title: 'Joker',
                    imageAsset: 'assets/images/movie4.jpg',
                    rating: 8.4,
                  ),
                ],
              ),
            ),

            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}

class MovieCard extends StatelessWidget {
  final String title;
  final String imageAsset;
  final double rating;

  const MovieCard({
    Key? key,
    required this.title,
    required this.imageAsset,
    required this.rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      margin: const EdgeInsets.only(right: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  imageAsset,
                  height: 180,
                  width: 140,
                  fit: BoxFit.cover,
                  errorBuilder:
                      (context, error, stackTrace) => Container(
                        height: 180,
                        width: 140,
                        color: Colors.grey[300],
                        child: const Icon(Icons.error, color: Colors.red),
                      ),
                ),
              ),
              Positioned(
                right: 8,
                top: 8,
                child: Container(
                  width: 36,
                  height: 36,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.green,
                  ),
                  child: Center(
                    child: Text(
                      rating.toString(),
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}

