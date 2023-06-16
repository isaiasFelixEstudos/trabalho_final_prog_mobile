import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projeto_final/app/paginas/login.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const CustomAppBar({Key? key, required this.title}) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.food_bank),
            SizedBox(width: 8),
            Text(title),
            SizedBox(width: 8),
            Icon(Icons.food_bank),
          ],
        ),
      ),
      actions: [
        GestureDetector(
          onTap: () {
            Get.off(Login());
          },
          child: Icon(Icons.logout),
        )
      ],
    );
  }
}
