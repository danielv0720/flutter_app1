import 'package:flutter/material.dart';
import 'package:marvel_app/models/comics_response.dart';
import 'package:marvel_app/widgets/list_comic.dart';

import '../providers/comics_provider.dart';

class Homepage extends StatefulWidget {
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  late Future<NowComicsResponde> futureComics;
  @override
  void initState() {
    super.initState();
    futureComics = ComicsProvider.;
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        child: Text('up'),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      const Text('usuario prueba')
                    ],
                  ),
                  const Icon(Icons.search, size: 32),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Best selling Comics',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Text(
                    'see all',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              SizedBox(height: 30),
              SizedBox(
                height: 300,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    ListComics(
                      image: 'assets/comics1.jpg',
                      tittle: 'Spiderman',
                    ),
                    SizedBox(width: 20),
                    ListComics(
                      image: 'assets/venom.jpg',
                      tittle: 'Venom',
                    ),
                    SizedBox(width: 20),
                    ListComics(
                      image: 'assets/iroman.jpg',
                      tittle: 'iroman',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
