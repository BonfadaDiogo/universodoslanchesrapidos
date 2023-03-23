import 'package:cardapio/cadastro.dart';
import 'package:cardapio/cardapio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController _controlUser = TextEditingController();
  TextEditingController _controlPass = TextEditingController();
  bool check = false;
  bool olho = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image(
                image: AssetImage("logotipo.png"),
                width: MediaQuery.of(context).size.width * 0.5,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 60, left: 60, top: 30),
                child: TextField(
                  controller: _controlUser,
                  style: TextStyle(fontSize: 20),
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintText: "Digite seu e-mail",
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 60, left: 60, top: 30),
                child: TextField(
                  controller: _controlPass,
                  style: TextStyle(fontSize: 20),
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      hintText: "Senha",
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              olho = !olho;
                            });
                          },
                          icon: (olho)
                              ? Icon(Icons.visibility)
                              : Icon(Icons.visibility_off))),
                  obscureText: olho,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 60, left: 60, top: 30),
                child: CheckboxListTile(
                    title: Text("Mantenha-me conectado"),
                    controlAffinity: ListTileControlAffinity.leading,
                    value: check,
                    onChanged: (p) {
                      setState(() {
                        check = !check;
                      });
                    }),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: ElevatedButton(
                    style: ButtonStyle(
                        padding: MaterialStatePropertyAll(EdgeInsets.only(
                            right: 100, left: 100, top: 20, bottom: 20))),
                    onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>Cardapio())),
                    child: Text(
                      "Login",
                      style: TextStyle(fontSize: 26),
                    )),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: ElevatedButton(
                    style: ButtonStyle(
                        padding: MaterialStatePropertyAll(EdgeInsets.only(
                            right: 100, left: 100, top: 20, bottom: 20))),
                    onPressed: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Cadastro())),
                    child: Text(
                      "Cadastre-se aqui",
                      style: TextStyle(fontSize: 26),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
