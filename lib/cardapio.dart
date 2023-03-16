import 'dart:convert';

import 'package:cardapio/widgets/quantidade.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';


class Cardapio extends StatefulWidget {
  const Cardapio({super.key});

  @override
  State<Cardapio> createState() => _CardapioState();
}

class _CardapioState extends State<Cardapio> {
  int _value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Universo Dos Lanches Rápidos"),
        actions: <Widget>[
          PopupMenuButton(
              onSelected: ((result) {
                // switch (result) {
                //   case 1:
                //     Navigator.push(context,
                //         MaterialPageRoute(builder: (context) => MyList()));
                //     break;
                // }
              }),
              icon: Icon(Icons.forward),
              iconSize: 40,
              itemBuilder: (context) {
                return [
                  PopupMenuItem(
                    value: 1,
                    child: Text("Outra página"),
                  ),
                  PopupMenuItem(
                    value: 2,
                    child: Text("Mais uma página"),
                  ),
                  PopupMenuItem(
                    value: 3,
                    child: Text("Mais um item (faz nada)"),
                  ),
                ];
              })
        ],
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(top: 35, bottom: 35),
            child: Text(
              "Escolha Seu Sanduíche",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
              ),
            alignment: Alignment.center,
          ),

          Container(
            height: 600,
            child: FutureBuilder(
              future: DefaultAssetBundle.of(context).loadString("assets/sanduiches.json"),
              builder: (context, snapshot) {
                var content = json.decode(snapshot.data.toString());
                return ListView.builder(
                  itemCount: content.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      trailing: Quantidade(),
                      title: Text(content[index]["nome"]),
                      subtitle: Text(content[index]["ingredientes"]),
                      onTap: () {
                        
                      },
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
