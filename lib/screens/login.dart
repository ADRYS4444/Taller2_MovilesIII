import 'package:flutter/material.dart';
import 'package:taller1/screens/catalogo.dart';
import 'package:firebase_database/firebase_database.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepPurple.shade50,
        appBar: AppBar(
          title: Text("Login"),
          backgroundColor: Colors.deepPurple, 
        ),
        body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
                child: SingleChildScrollView(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Inicio de Sesion',
                            style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                              color: Colors.deepPurple, 
                            ),
                          ),
                          iconoLogin(),
                          SizedBox(height: 20),
                          inputUser(),
                          SizedBox(height: 20),
                          inputPass(),
                          SizedBox(height: 20),
                          iniciarSesion(context),
                          SizedBox(height: 20),
                          recuperarPass(context),
                        ])))),
    );
  }
}

Widget iconoLogin() {
  return Icon(Icons.admin_panel_settings_outlined,
      size: 100, color: Colors.deepPurple); 
}

Widget inputUser() {
  return TextField(
    decoration: InputDecoration(
      labelText: "Usuario",
      border: OutlineInputBorder(),
      prefixIcon: Icon(Icons.person_outline_rounded),
    ),
  );
}

Widget inputPass() {
  return TextField(
    decoration: InputDecoration(
        labelText: "Contraseña",
        border: OutlineInputBorder(),
        prefixIcon: Icon(Icons.lock_outline_sharp)),
    obscureText: true,
  );
}

Widget iniciarSesion(context) {
  return ElevatedButton(
    onPressed: () => Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => Catalogo())),
    child: Text("Iniciar Sesion"),
    style: ElevatedButton.styleFrom(
      foregroundColor: Colors.white, backgroundColor: Colors.deepPurple, 
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 30),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30), 
      ),
    ),
  );
}

Widget recuperarPass(context) {
  return TextButton(
    onPressed: () => alerta_recuperarPass(context),
    child: Text("¿Olvidaste tu contraseña?"),
    style: TextButton.styleFrom(
      foregroundColor: Colors.deepPurple, textStyle: TextStyle(fontSize: 16),
    ),
  );
}

void alerta_recuperarPass(context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Sin Funcion"),
          content: Text("Este botón no tiene funcionalidad"),
          actions: [
            TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text("Aceptar")),
            TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text("Cancelar"))
          ],
        );
      });
}
