import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: PresentationPage (),
  ));
}

class PresentationPage  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Prince Savage Club'),
        backgroundColor: Color.fromARGB(255, 8, 4, 92), // Cambia el color de fondo del AppBar
        shadowColor: Color.fromARGB(255, 53, 152, 227),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/FondoPrinces.jpg'), // Ruta de tu imagen de fondo
            fit: BoxFit.cover, // Ajusta la imagen para cubrir todo el contenedor
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'assets/Princes2.jpeg', // Ruta de tu imagen existente
                  width: 900,
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
                        '¡Hola! Bienvenidos a Prince Savage Club Cholula, una discoteca inaugurada en junio de 2022.\n Nos enorgullece ser un club preocupado por brindar una experiencia excepcional a nuestros asistentes.\n Hemos creado un concepto lujoso en nuestras instalaciones, donde combinamos una estética elegante con precios accesibles.\n Además, nuestra ubicación estratégica genera una gran atracción visual.\n En Prince Savage Club, puedes esperar una noche llena de diversión, música y un ambiente vibrante. ',
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
                        '¡Hola! Bienvenidos a Prince Savage Club Cholula, una discoteca inaugurada en junio de 2022.\n Nos enorgullece ser un club preocupado por brindar una experiencia excepcional a nuestros asistentes.\n Hemos creado un concepto lujoso en nuestras instalaciones, donde combinamos una estética elegante con precios accesibles.\n Además, nuestra ubicación estratégica genera una gran atracción visual.\n En Prince Savage Club, puedes esperar una noche llena de diversión, música y un ambiente vibrante. ',
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

