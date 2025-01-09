import 'package:flutter/material.dart';
import 'package:taller1/screens/login.dart';
import 'package:firebase_database/firebase_database.dart';

class Registro extends StatelessWidget {
  const Registro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepPurple.shade50, 
        appBar: AppBar(
          title: Text("Registro"),
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
                            'Registrate',
                            style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                              color: Colors.deepPurple, 
                            ),
                          ),
                          iconoRegistro(),
                          SizedBox(height: 20),
                          registro(),
                          SizedBox(height: 20),
                          recuperarPass(context),
                        ])))),
    );
  }
}

Widget iconoRegistro() {
  return Icon(Icons.person_add_alt, size: 100, color: Colors.deepPurple); 
}

Widget registro() {
  TextEditingController nombre = TextEditingController();
  TextEditingController edad = TextEditingController();
  TextEditingController usuario = TextEditingController();
  TextEditingController password = TextEditingController();
  return Column(
    children: [
      TextField(
        controller: nombre,
        decoration: InputDecoration(
          labelText: "Nombre",
          border: OutlineInputBorder(),
          prefixIcon: Icon(Icons.person),
        ),
      ),
      SizedBox(height: 20),
      TextField(
        controller: edad,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          labelText: "Edad",
          border: OutlineInputBorder(),
          prefixIcon: Icon(Icons.today_outlined),
        ),
      ),
      SizedBox(height: 20),
      TextField(
        controller: usuario,
        decoration: InputDecoration(
          labelText: "Usuario",
          border: OutlineInputBorder(),
          prefixIcon: Icon(Icons.person_outline_rounded),
        ),
      ),
      SizedBox(height: 20),
      TextField(
        controller: password,
        decoration: InputDecoration(
          labelText: "Contraseña",
          border: OutlineInputBorder(),
          prefixIcon: Icon(Icons.lock_outline_sharp)),
        obscureText: true,
      ),
      SizedBox(height: 20),
      TextField(
        decoration: InputDecoration(
          labelText: "Repetir Contraseña",
          border: OutlineInputBorder(),
          prefixIcon: Icon(Icons.lock_reset_outlined)),
        obscureText: true,
      ),
      SizedBox(height: 20),
      FilledButton(
        onPressed: () => guardar(nombre.text, edad.text, usuario.text, password.text),
        child: Text("Registrarse"),
        style: FilledButton.styleFrom(
          backgroundColor: Colors.deepPurple, 
          foregroundColor: Colors.white, 
          padding: EdgeInsets.symmetric(vertical: 12, horizontal: 30),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30), 
          ),
        ),
      ),
    ],
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

Future<void> guardar(nombre, edad, usuario, password) async {
  DatabaseReference ref = FirebaseDatabase.instance.ref("usuarios/");

  await ref.set({
    "nombre": nombre,
    "edad": edad,
    "usuario": usuario,
    "password": password
  });
}
