import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

class ListagemItens extends StatelessWidget {
  const ListagemItens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Listagem Itens"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: 50,
        itemBuilder: (context,index){
          return ListTile(
            title: Text("Item $index"),
            onTap: (){
              context.router.pushNamed("/detalhe-item/$index");
            },
          );
        },
      ),
    );
  }
}
