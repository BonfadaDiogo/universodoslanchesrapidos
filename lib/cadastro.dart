import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:cardapio/cadastro.dart';

class Cadastro extends StatelessWidget {
  const Cadastro({super.key});
  
  

  @override
  Widget build(BuildContext context) {
    
    
           return Scaffold(
           body: Center(
           child: SingleChildScrollView(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [

              TextFormField(
                
                decoration: InputDecoration(
                  label: Text('Seu Nome'), hintText: 'Paulo'
                  ),
                ),

                TextFormField(
                
                decoration: InputDecoration(
                  label: Text('Sobrenome completo'), hintText: 'Santos'
                  ),
                ),
              
              TextFormField(
                
                decoration: InputDecoration(
                  label: Text('e-mail'), hintText: 'nome@email.com'
                  ),
                ),
                TextFormField(
                
                decoration: InputDecoration(
                  label: Text('Confirme seu e-mail'), hintText: 'nome@email.com'
                  ),
                ),
                TextFormField(
                  
                decoration: InputDecoration(
                  label: Text('Cadastre sua senha'), hintText: '8 caracteres, letras e números'
                  )
                  ),
                  TextFormField(
                
                decoration: InputDecoration(
                  label: Text('Confirme sua senha'), hintText: '8 caracteres, letras e números'
                  ),
                ),
                  SizedBox(height: 20),
                 
                  ElevatedButton(
                    onPressed:() {}, 
                    child: Text(
                      "Cadastro"
                      )
                  ),
              ]
              )
            ),
        ),
       );
    
  }
}
