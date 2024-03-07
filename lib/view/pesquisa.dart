import 'package:flutter/material.dart';

class PedidoRastreado extends StatelessWidget {
  const PedidoRastreado({super.key, required this.title});

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
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const ListTile(
              leading: Icon(Icons.album),
              title: Text('Pedido N######'),
              subtitle: Text('Uma caixa de azeitonas'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  child: const Text('Rastrear'),
                  onPressed: () {/* ... */},
                ),
                const SizedBox(width: 8),
                TextButton(
                  child: const Text('Ver Status'),
                  onPressed: () {/* ... */},
                ),
                const SizedBox(width: 8),
              ],
            ),
          ],
        ),
      ),
    ),),);
  }
}