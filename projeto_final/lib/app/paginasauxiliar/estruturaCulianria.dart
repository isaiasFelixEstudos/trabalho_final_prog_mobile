import 'package:flutter/material.dart';
import 'package:projeto_final/funcoes/api_receitas.dart';

class EstruturaCulinarias extends StatefulWidget {
  @override
  _EstruturaCulinariasState createState() => _EstruturaCulinariasState();
}

class _EstruturaCulinariasState extends State<EstruturaCulinarias> {
  List<String> cuisines = [];

  @override
  void initState() {
    super.initState();
    CuisineService.fetchCuisines().then((cuisines) {
      setState(() {
        this.cuisines = cuisines;
      });
    }).catchError((error) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Error'),
            content: Text('Failed to fetch cuisines.'),
            actions: [
              TextButton(
                child: Text('OK'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    // Use the cuisines data in your widget
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Page'),
      ),
      body: ListView.builder(
        itemCount: cuisines.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(cuisines[index]),
          );
        },
      ),
    );
  }
}
