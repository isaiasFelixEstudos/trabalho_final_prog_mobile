import 'package:flutter/material.dart';
import 'package:get/get.dart';

/* paginas */
import 'splash.dart';
import 'app/paginas/perfiluser.dart';
import 'app/homeScreen.dart';
import 'app/paginas/culinaria.dart';
/* paginas */

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      getPages: [
        GetPage(name: '/splash', page: () => SplashScreen()),
        GetPage(name: '/', page: () => HomeScreen()),
        GetPage(name: '/home', page: () => HomeScreen()),
        GetPage(name: '/areuser', page: () => UpdateCadUser()),
        GetPage(name: '/culinarias', page: () => PaginaCulianria()),
      ],
    ),
  );
}
