import 'package:flutter/material.dart';
import 'package:taller1/screens/bienvenida.dart';

class MiDrawer extends StatelessWidget {
  const MiDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.deepPurple.shade50, 
      child: ListView(
        padding: EdgeInsets.zero, 
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.deepPurple, 
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.account_circle,
                  size: 60,
                  color: Colors.white, 
                ),
                SizedBox(height: 10),
                Text(
                  'Usuario',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white, 
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.home, 
              color: Colors.deepPurple, 
            ),
            title: Text(
              "Bienvenida",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.deepPurple.shade800, 
              ),
            ),
            onTap: () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => Bienvenida())),
          ),
        ],
      ),
    );
  }
}
