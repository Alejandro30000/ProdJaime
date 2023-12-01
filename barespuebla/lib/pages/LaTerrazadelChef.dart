import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: PresentationPage2(),
  ));
}

class PresentationPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('La Terraza Del Chef'),
        backgroundColor: Color.fromARGB(255, 8, 4, 92), // Cambia el color de fondo del AppBar
        shadowColor: Color.fromARGB(255, 53, 152, 227),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/FondoTerraza.jpg'), // Ruta de tu imagen de fondo
            fit: BoxFit.cover, // Ajusta la imagen para cubrir todo el contenedor
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'assets/LaTerrazadelChef.jpg', // Ruta de tu imagen actual
                  width: 800,
                  height: 400,
                ),
                SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Descripcion ',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white, // Cambia el color del texto a blanco
                        ),
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                          Text(
                            'Aquí va la descripción del lugar...',
                           style: TextStyle(
                           fontSize: 18,
                           color: Colors.white, // Cambia el color del texto a blanco
                        ),
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Menu ',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white, // Cambia el color del texto a blanco
                        ),
                      ),
                    ],
                  ),
                ),
                                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                        Text(
                          'Aquí va el menú...',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white, // Cambia el color del texto a blanco
                          ),
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
