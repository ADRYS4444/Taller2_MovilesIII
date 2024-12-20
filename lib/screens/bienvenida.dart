import 'package:flutter/material.dart';
import 'package:taller1/screens/login.dart';
import 'package:taller1/screens/registro.dart';

class Bienvenida extends StatelessWidget {
  const Bienvenida({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Column(
            children: [
              Text("Bienvenidos"),
            ],
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("TALLER 1"),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                login_btn(context),
                registro_btn(context),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget login_btn(context) {
  return TextButton.icon(
      onPressed: () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => Login())),
      label: Text("Login"),
      icon: Icon(Icons.account_circle));
}

Widget registro_btn(context) {
  return TextButton.icon(
      onPressed: () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => Registro())),
      label: Text("Registrarse"),
      icon: Icon(Icons.account_circle_outlined));
}