import 'package:flutter/material.dart';
import 'package:zap_hx/uteis/paleta_cores.dart';

class Login extends StatefulWidget {
  const Login({ Key key }) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {


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
                height: alturaTela,
                color: ,
                ),
              ),
              ),

            ),
          ],
        ),
      ),
    );
  }
}