import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class Formulario extends StatefulWidget {
  const Formulario({super.key});

  @override
  State<Formulario> createState() => _FormularioState();
}

class _FormularioState extends State<Formulario> {
TextEditingController _superControl = TextEditingController();
  String? _diaDaSemana;
  int _pgto = 0;
  bool _bom = false, _ruim = false, _otimo = false, _recomenda = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
          centerTitle: true,
          title: Text("PESQUISA",
              style:
                  TextStyle(fontStyle: FontStyle.italic, color: Colors.white))),

      body: Padding(
        padding: const EdgeInsets.only(left: 50, right: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            //////////////////////////////////
            Text(
              "Pesquisa de satisfação",
              style: TextStyle(fontSize: 18),
            ),
      
              TextField(
                controller: _superControl,
                decoration: InputDecoration(label: 
                Text(
                  "Quantas vezes costuma fazer lanche por semana?"
                  )
                )
              ),

              TextField(
                controller: _superControl,
                decoration: InputDecoration(label: 
                Text(
                  "O que mais chamou a atenção no aplicativo?"
                  )
                )
              ),
            /////////////////////////////////
            Text(
              "Marque o seu melhor dia para pedir lanche:",
              style: GoogleFonts.adventPro(
                fontSize: 22
              )
            ),  
            /////////////////////////////////
            DropdownButton(
                value: _diaDaSemana,
                hint: Text("Selecione o dia da semana "),
                items: [
                  DropdownMenuItem(
                    value: "Domingo",
                    onTap: () => _diaDaSemana = "Domingo",
                    child: Text("Domingo"),
                  ),
                  DropdownMenuItem(
                    value: "Segunda",
                    onTap: () => _diaDaSemana = "Segunda",
                    child: Text("Segunda"),
                  ),
                  DropdownMenuItem(
                    value: "Terça",
                    onTap: () => _diaDaSemana = "Terça",
                    child: Text("Terça"),
                  ),
                  DropdownMenuItem(
                    value: "Quarta",
                    onTap: () => _diaDaSemana = "Quarta",
                    child: Text("Quarta"),
                  ),
                  DropdownMenuItem(
                    value: "Quinta",
                    onTap: () => _diaDaSemana = "Quinta",
                    child: Text("Quinta"),
                  ),
                  DropdownMenuItem(
                    value: "Sexta",
                    onTap: () => _diaDaSemana = "Sexta",
                    child: Text("Sexta"),
                  ),
                  DropdownMenuItem(
                    value: "Sábado",
                    onTap: () => _diaDaSemana = "Sábado",
                    child: Text("Sábado"),
                  )
                ],
                onChanged: (obj) => setState(() {})),
            ////////////////////////////////
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(
                    value: _bom,
                    onChanged: (val) => setState(() {
                          _bom = !_bom;
                        })),
                Text("Bom"),
                Checkbox(
                    value: _ruim,
                    onChanged: (val) => setState(() {
                          _ruim = !_ruim;
                        })),
                Text("Ruim"),
                Checkbox(
                    value: _otimo,
                    onChanged: (val) => setState(() {
                          _otimo = !_otimo;
                        })),
                Text("Ótimo"),
              ],
            ),
            ///////////////////////////////////
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("Recomenda este aplicativo?"),
                Switch(
                    value: _recomenda,
                    onChanged: (value) => setState(() {
                          _recomenda = !_recomenda;
                        })),
              ],
            ),
            ///////////////////////////////////
            ElevatedButton(onPressed: () {}, child: Text("Enviar dados"))
          ],
        ),
      ),
    );
  }
}

    
  