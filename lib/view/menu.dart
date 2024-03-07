
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/view/pesquisa.dart';

class RastrearPedidoPage extends StatelessWidget {
  const RastrearPedidoPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                "https://img.freepik.com/vetores-gratis/fundo-azul-geometrico-vetor-de-papel-de-parede-da-area-de-trabalho_53876-135927.jpg"), // Substitua pelo URL da sua imagem
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Numero do Pedido',
                    labelStyle:
                        TextStyle(color: Color.fromRGBO(222, 25, 80, 100)),
                  ),
                  style: TextStyle(color: Color.fromRGBO(222, 25, 80, 100)),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelStyle:
                        TextStyle(color: Color.fromRGBO(222, 25, 80, 100)),
                    labelText: 'Nome Destinatario',
                  ),
                  style: TextStyle(color: Color.fromRGBO(222, 25, 80, 100)),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: GestureDetector(
                  child: Container( padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(0, 215, 200, 100),
                      border:
                          Border.all(color: Color.fromRGBO(255, 255, 255, 1)),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      "Buscar",
                      style: TextStyle(color: Color.fromRGBO(255, 0, 0, 100)),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>  const PedidoRastreado(title: "Pedidos")));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

