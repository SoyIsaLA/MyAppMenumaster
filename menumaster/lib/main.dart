import 'package:flutter/material.dart';
import 'package:menumaster/inicio.dart';
import 'package:menumaster/menudia.dart';
import 'package:menumaster/pantallamesas.dart';
import 'package:menumaster/perfilmesero.dart';
import 'package:menumaster/registro.dart';

class PrincipalRestauranteWidget extends StatelessWidget {
  const PrincipalRestauranteWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
      child: Scaffold(
        backgroundColor: const Color(0xFFAAF3F6),
        body: SafeArea(
          top: true,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/logo.png',
                    width: 300,
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const IniciosesionWidget()));
                      },
                      style: ElevatedButton.styleFrom(
                        fixedSize: const Size(250, 60),
                        backgroundColor: const Color(0x9C70E0E0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Text(
                        'Iniciar sesión',
                        style: TextStyle(
                          fontFamily: 'Amaranth',
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const RegistroWidget()));
                      },
                      style: OutlinedButton.styleFrom(
                        fixedSize: const Size(250, 60),
                        side: const BorderSide(
                          color: Color(0xFF0B191E),
                          width: 2,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Text(
                        'Registrarse',
                        style: TextStyle(
                          fontFamily: 'Amaranth',
                          color: Color(0xFF0B191E),
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  WidgetsApp.debugAllowBannerOverride = false;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Menu Master',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromARGB(255, 94, 1, 255)),
          useMaterial3: true,
        ),
        home: const PrincipalRestauranteWidget(),
        routes: {
          '/inicio': (context) => const IniciosesionWidget(),
          '/menudia': (context) => const Mesa1Widget(),
          '/pantallamesas': (context) => PantallaMesasWidget(),
          '/perfilmesero': (context) => const PerfilmeseroWidget(),
          '/registro': (context) => const RegistroWidget(),
        });
  }
}
