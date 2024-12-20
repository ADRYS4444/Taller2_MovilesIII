import 'package:flutter/material.dart';
import 'package:taller1/screens/login.dart';

class Registro extends StatelessWidget {
  const Registro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Registro"),
        ),
        body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
                child: SingleChildScrollView(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                  Text(
                    'Registrate',
                    style: TextStyle(fontSize: 35),
                  ),
                  iconoRegistro(),
                  SizedBox(height: 20),
                  inputNombre(),
                  SizedBox(height: 20),
                  inputEdad(),
                  SizedBox(height: 20),
                  inputUser(),
                  SizedBox(height: 20),
                  inputPass(),
                  SizedBox(height: 20),
                  inputRepetirPass(),
                  SizedBox(height: 20),
                  registrarse(context),
                  SizedBox(height: 20),
                  recuperarPass(context),
                ])))));
  }
}

Widget iconoRegistro() {
  return Icon(Icons.person_add_alt, size: 100, color: Colors.blueGrey);
}

Widget inputNombre() {
  return TextField(
    decoration: InputDecoration(
      labelText: "Nombre",
      border: OutlineInputBorder(),
      prefixIcon: Icon(Icons.person),
    ),
  );
}

Widget inputEdad() {
  return TextField(
    keyboardType: TextInputType.number,
    decoration: InputDecoration(
      labelText: "Edad",
      border: OutlineInputBorder(),
      prefixIcon: Icon(Icons.today_outlined),
    ),
  );
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

Widget inputRepetirPass() {
  return TextField(
    decoration: InputDecoration(
        labelText: "Repetir Contraseña",
        border: OutlineInputBorder(),
        prefixIcon: Icon(Icons.lock_reset_outlined)),
    obscureText: true,
  );
}

Widget registrarse(context) {
  return ElevatedButton(
      onPressed: () => Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => Login())),
      child: Text("Registrarse"));
}

Widget recuperarPass(context) {
  return TextButton(
      onPressed: () => alerta_recuperarPass(context),
      child: Text("¿Olvidaste tu contraseña?"));
}

void alerta_recuperarPass(context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Sin Funcion"),
          content: Text("Este boton no tiene funcionalidad"),
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
