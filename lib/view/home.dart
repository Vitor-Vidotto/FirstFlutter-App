import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/menu.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(child: Column(children: [
        const Padding(
            padding: EdgeInsets.all(20.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'User',
              ),
            )),
        const Padding(
            padding: EdgeInsets.all(20.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
              ),
            )),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextButton(
            style: TextButton.styleFrom(
              foregroundColor:  Color.fromARGB(255, 13, 145, 101),
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        const RastrearPedidoPage(title: "Rastreador do Pedido"),
                  ));
            },
            child: Text('Entrar'),
          ),
        ),
      ]),
    ),);
  }
}
