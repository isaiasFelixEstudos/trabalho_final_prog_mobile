import 'package:flutter/material.dart';
//import 'package:get/get.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          /*
          UserAccountsDrawerHeader(
            accountName: Text(controllUser.user?.displayName ?? ''),
            accountEmail: Text(controllUser.user?.email ?? ''),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.black,
              child: Text(
                  controllUser.user?.email?.isNotEmpty == true
                      ? controllUser.user!.email![0]
                      : 'N',
                  style: TextStyle(fontSize: 40.0)),
            ),
          ),*/
          Card(
            child: ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.red,
              ),
              title: Text('Home'),
              onTap: () {
                Navigator.of(context).pushNamed('/home');
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(
                Icons.person,
                color: Colors.red,
              ),
              title: Text('Perfil'),
              onTap: () {
                Navigator.of(context).pushNamed('/areuser');
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(
                Icons.bookmark_add,
                color: Colors.red,
              ),
              title: Text('Cadastrar Receita'),
              onTap: () {
                Navigator.of(context).pushNamed('/cadreceita');
              },
            ),
          ),
        ],
      ),
    );
  }
}
