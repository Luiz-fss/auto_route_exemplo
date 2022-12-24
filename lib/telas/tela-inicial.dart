import 'package:auto_route_exemplo/router/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

class TelaInicial extends StatelessWidget {
  const TelaInicial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tela Inicial"),
        centerTitle: true,
      ),
      body: Center(
          child: ElevatedButton(
            onPressed: (){
              context.router.pushNamed("/listagem");

              //context.router.push(const ListagemItens());
              //Navigator.of(context).push(
                //  MaterialPageRoute(builder: (context)=> ListagemItens()));
            },
            child: const Text("Ver lista"),
          )
      ),
    );
  }
}
