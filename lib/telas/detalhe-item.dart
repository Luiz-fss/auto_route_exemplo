import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

class DetalheItem extends StatelessWidget {
   DetalheItem({Key? key, @PathParam() required this.id}) : super(key: key);

   final int id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detalhe Item $id"),
        centerTitle: true,
      ),
      body: Center(
          child: ElevatedButton(
            onPressed: (){
              context.router.pushNamed("/comprar-item");
            },
            child: const Text("Comprar Item"),
          )
      ),
    );
  }
}
