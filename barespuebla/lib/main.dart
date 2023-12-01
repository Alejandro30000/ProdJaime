import 'package:barespuebla/pages/BarPrince.dart';
import 'package:barespuebla/pages/inicio_sesion.dart';
import 'package:flutter/material.dart';
import 'package:barespuebla/pages/LaTerrazadelChef.dart';
import 'package:barespuebla/pages/SonoraPrime.dart';
void main() {
  runApp(MaterialApp(
    
    initialRoute: '/',
    routes: {
      '/': (context) => const MyApp(),
      '/inicio_sesion': (context) => const InicioSesion(),
      '/BarPrince': (context) => PresentationPage (),
      '/LaTerrazadelChef': (context) => PresentationPage2(),
      '/SonoraPrime': (context) => PresentationPage3(),
    },
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // Métodos para construir elementos ListTile con botones
  Widget _buildItemWithButton(String restaurantName, Function() onPressed) {
    return ListTile(
      title: Text(restaurantName),
      leading: const Icon(Icons.fmd_good),
      trailing: ElevatedButton(
        onPressed: onPressed,
        child: const Text('Mas Informacion', style: TextStyle(color: Colors.white), ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NIGHTLIFE HUB',
      theme: ThemeData(primarySwatch: Colors.purple),
      initialRoute: '/',
      routes: {
        '/login': (context) => const InicioSesion(),
        '/BarPrince': (context) => PresentationPage (),
        '/LaTerrazadelChef': (context) => PresentationPage2(),
        '/SonoraPrime': (context) => PresentationPage3(),
      },
      home: Scaffold(
         drawer: Drawer(
          child: Container(
            color: Colors.purple,
            child: Column(
              children: [
                Container(
                  width: 250,
                  height: 250,
                  margin: const EdgeInsets.only(top: 50, bottom: 20),
                  child: Image.asset('assets/logo.png'),
                ),
                const Text("",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 10)),
                Column(
                  children: <Widget>[
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const InicioSesion()),
                        );
                      },
                      child: const Text('Ir a Inicio de Sesión'),
                    ),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/login');
                      },
                      child: const Text('Comentarios'),
                    ),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/login');
                      },
                      child: const Text('Reseñas '),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        appBar: AppBar(
          title: const Text('Antros'),
        ),
        body: Stack(
          children: [
            // Contenedor con la imagen de fondo
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/FondoInicio.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ListView(
              children: [
                _buildItemWithButton('Prince Savage Club Cholula', () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PresentationPage ()),
                  );
                  
                }),
                _buildItemWithButton('La Terraza del Chef', () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PresentationPage2()),
                  );
                }),
                _buildItemWithButton('Sonora Prime', () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PresentationPage3()),
                  );
                }),
                
              ],
            ),
          ],
        ),
      ),
    );
  }
}
