import 'package:flutter/material.dart';

class NaoFavoritosApp extends StatefulWidget {
  const NaoFavoritosApp({super.key});

  @override
  State<NaoFavoritosApp> createState() => _NaoFavoritosAppState();
}

class _NaoFavoritosAppState extends State<NaoFavoritosApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text('Não Favoritos'),
        ],
      ),
    );
  }
}
