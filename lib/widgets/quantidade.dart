import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Quantidade extends StatefulWidget {
  const Quantidade({super.key});

  @override
  State<Quantidade> createState() => _QuantidadeState();
}

class _QuantidadeState extends State<Quantidade> {
  int qtd = 10;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      //scrollDirection: Axis.horizontal,
      children: [
        IconButton(
          onPressed: () {
            setState(() {
              qtd++;
            });
          },
          icon: Icon(Icons.add)
        ),
        
        Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(width: 0.5)
            ),
            //alignment: Alignment.center,
            child: Text(qtd.toString()),
          ),
        ),
        
        IconButton(
          onPressed: () {
            setState(() {
                qtd--;
              });
          },
          icon: Icon(Icons.remove)
        ),
      ],
    );
  }
}
