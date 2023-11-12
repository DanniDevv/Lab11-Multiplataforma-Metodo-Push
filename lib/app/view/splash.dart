import 'package:flutter/material.dart';
import 'package:mi_tarea04_flutter/app/view/gallery.dart';
import 'package:lottie/lottie.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(
              'assets/animations/hello.json',
              width: 300,
              height: 300,
              repeat: true,
            ),
            SizedBox(height: 20),
            Text(
              '¡Bienvenido!',
              style: TextStyle(
                fontFamily: 'CascadiaCode',
                fontSize: 40,
              ),
            ),
            SizedBox(height: 50),
            ElevatedButton(
               onPressed: () {
                // Redireccion a la pagina Galeria
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => GaleriaPage(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                onPrimary: Colors.white,
                elevation: 5,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text(
                'Ir a Galería',
                style: TextStyle(
                  fontFamily: 'CascadiaCode',
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
