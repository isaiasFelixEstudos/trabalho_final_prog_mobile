import 'package:flutter/material.dart';

class FavoritosApp extends StatefulWidget {
  const FavoritosApp({super.key});

  @override
  State<FavoritosApp> createState() => _FavoritosAppState();
}

class _FavoritosAppState extends State<FavoritosApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [Text('Favoritos')],
      ),
    );
  }
}
