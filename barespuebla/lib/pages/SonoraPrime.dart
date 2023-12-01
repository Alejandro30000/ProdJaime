import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: PresentationPage3(),
  ));
}

class PresentationPage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sonora Grill Prime'),
        backgroundColor: Color.fromARGB(255, 8, 4, 92), // Cambia el color de fondo del AppBar
        shadowColor: Color.fromARGB(255, 53, 152, 227),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/FondoSonora.jpg'),
            fit: BoxFit.cover, // Ajusta la imagen para cubrir todo el contenedor
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 20),
                Image.asset(
                  'assets/SonoraPrime.jpg',
                  width: 800,
                  height: 400,
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Descripcion ',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    '¡Hola! Bienvenidos a Prince Savage Club Cholula, una discoteca inaugurada en junio de 2022.\n Nos enorgullece ser un club preocupado por brindar una experiencia excepcional a nuestros asistentes.\n Hemos creado un concepto lujoso en nuestras instalaciones, donde combinamos una estética elegante con precios accesibles.\n Además, nuestra ubicación estratégica genera una gran atracción visual.\n En Prince Savage Club, puedes esperar una noche llena de diversión, música y un ambiente vibrante. ',
                    style: TextStyle(fontSize: 18,color: Colors.white,),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Menu ',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Agrega aquí la descripción del menú...',
                    style: TextStyle(fontSize: 18,color: Colors.white,),
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
