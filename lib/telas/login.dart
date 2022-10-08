import 'package:flutter/material.dart';
import 'package:zap_hx/uteis/paleta_cores.dart';

class Login extends StatefulWidget {
  const Login({Key key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController _controlleNome =
      TextEditingController(text: 'João Oliveira');
  TextEditingController _controlleEmail =
      TextEditingController(text: 'joao.oliveira@hexagon.pro');
  TextEditingController _controlleSenha =
      TextEditingController(text: '12345678');
  bool _cadastroUsuario = false;

  @override
  Widget build(BuildContext context) {
    double alturaTela = MediaQuery.of(context).size.height;
    double larguraTela = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        color: PaletaCores.corFundo,
        width: larguraTela,
        height: alturaTela,
        child: Stack(
          children: [
            Positioned(
              child: Container(
                width: larguraTela,
                height: alturaTela * 0.4,
                color: PaletaCores.corPrimaria,
              ),
            ),
            Center(
              child: SingleChildScrollView(
                child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Card(
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      child: Container(
                        padding: EdgeInsets.all(40),
                        width: 500,
                        child: Column(
                          children: [
                            //imagem perfil com botão
                           Visibility(
                            visible: _cadastroUsuario,
                            child:  ClipOval(
                              child: Image.asset("image/perfil.png",
                                  width: 120, 
                                  height: 120, 
                                  fit: BoxFit.cover),
                            ), ),

                            SizedBox(
                              height: 8,
                            ),

                            Visibility(
                              visible: _cadastroUsuario,
                              child:  TextButton(
                                onPressed: () {}, 
                                child: Text("Selecionar foto")),
                           ),


                            SizedBox(
                              height: 8,
                            ),

                            //caixa de texto para o nome
                            Visibility(
                              visible: _cadastroUsuario,
                              child: TextField(
                                keyboardType: TextInputType.name,
                                controller: _controlleSenha,
                                decoration: InputDecoration(
                                  labelText: 'Nome',
                                  hintText: 'Digite seu nome',
                                  suffixIcon: Icon(Icons.person),
                                ),
                              ),
                            ),

                            //caixa de texto para o email
                            TextField(
                              keyboardType: TextInputType.emailAddress,
                              controller: _controlleEmail,
                              decoration: InputDecoration(
                                labelText: 'Email',
                                hintText: 'Digite seu email',
                                suffixIcon: Icon(Icons.mail_outline),
                              ),
                            ),

                            //caixa de texto senha
                            TextField(
                              keyboardType: TextInputType.visiblePassword,
                              controller: _controlleSenha,
                              obscureText: true,
                              decoration: InputDecoration(
                                labelText: 'Senha',
                                hintText: 'Digite sua senha',
                                suffixIcon: Icon(Icons.lock_outline),
                              ),
                            ),

                            SizedBox(
                              height: 20,
                            ),

                            //botão de login
                            Container(
                              width: double.infinity,
                              child: ElevatedButton(
                                onPressed: () {},
                                child: _cadastroUsuario? Text("Cadastro") : Text('Login'),
                                style: ElevatedButton.styleFrom(
                                  primary: PaletaCores.corPrimaria,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 100, vertical: 15),
                                  textStyle: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),

                            SizedBox(
                              height: 20,
                            ),

                            //botão de cadastro

                            Row(
                              children: [
                                Text('Login'),
                                Switch(
                                    value: _cadastroUsuario,
                                    onChanged: (bool valor) {
                                      setState(() {
                                        _cadastroUsuario = valor;
                                      });
                                    }),
                                Text('Cadastro'),
                              ],
                            ),
                          ],
                        ),
                      ),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
