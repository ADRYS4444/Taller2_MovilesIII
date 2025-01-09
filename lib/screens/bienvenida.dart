import 'package:flutter/material.dart';
import 'package:taller1/screens/login.dart';
import 'package:taller1/screens/registro.dart';

class Bienvenida extends StatelessWidget {
  const Bienvenida({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade100,  
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,  
        title: Center(
          child: Text(
            "Bienvenidos",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              letterSpacing: 2,
            ),
          ),
        ),
        elevation: 5, 
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Proyecto Final AYS",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600,
                color: Colors.deepPurple.shade900,  
                letterSpacing: 1.5,
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                login_btn(context),
                SizedBox(width: 20),
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
  return ElevatedButton.icon(
    onPressed: () => Navigator.push(
      context, MaterialPageRoute(builder: (context) => Login())),
    icon: Icon(
      Icons.account_circle,
      color: Colors.white,
    ),
    label: Text(
      "Login",
      style: TextStyle(color: Colors.white),
    ),
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.deepPurple,  
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
    ),
  );
}

Widget registro_btn(context) {
  return ElevatedButton.icon(
    onPressed: () => Navigator.push(
      context, MaterialPageRoute(builder: (context) => Registro())),
    icon: Icon(
      Icons.account_circle_outlined,
      color: Colors.white,
    ),
    label: Text(
      "Registrarse",
      style: TextStyle(color: Colors.white),
    ),
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.deepPurple.shade300,  
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
    ),
  );
}
