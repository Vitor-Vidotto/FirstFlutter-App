import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/view/pesquisa.dart';

class RastrearPedidoPage extends StatelessWidget {
  const RastrearPedidoPage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
      ),
      body:
       Column(
        children: [
          const Padding(padding: EdgeInsets.all(20.0), child: TextField(
               decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Numero do Pedido',
        ),
          )),
        const Padding(padding: EdgeInsets.all(20.0), child: TextField(
               decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Nome Destinatario',
        ),
          )),
          Padding(padding: EdgeInsets.all(20.0),child: TextButton(style: TextButton.styleFrom(
    foregroundColor: Color.fromARGB(255, 13, 145, 101),
  ),
  onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        const PedidoRastreado(title: "Pedidos"),
                  ));
            },
            child: Text('Entrar'),
          ),),
        ]
       ),
    );
  }
}