import 'package:flutter/material.dart';
import 'package:menumaster/pantallamesas.dart';

class RegistroWidget extends StatefulWidget {
  const RegistroWidget({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _RegistroWidgetState createState() => _RegistroWidgetState();
}

class _RegistroWidgetState extends State<RegistroWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  bool passwordVisible = false;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: const Color.fromARGB(184, 255, 255, 255),
      body: SafeArea(
        top: true,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 230,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(162, 94, 182, 182),
                  borderRadius: BorderRadius.circular(16),
                ),
                alignment: Alignment.center,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    'assets/logoregistro.jpg',
                    width: 300,
                    height: 206,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Crear cuenta',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      'Comencemos completando el formulario a continuación.',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: emailController,
                      decoration: const InputDecoration(
                        labelText: 'Nombre Completo',
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: emailController,
                      decoration: const InputDecoration(
                        labelText: 'Email',
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: passwordController,
                      obscureText: !passwordVisible,
                      decoration: InputDecoration(
                        labelText: 'Contraseña',
                        suffixIcon: InkWell(
                          onTap: () {
                            setState(() {
                              passwordVisible = !passwordVisible;
                            });
                          },
                          child: Icon(
                            passwordVisible
                                ? Icons.visibility_outlined
                                : Icons.visibility_off_outlined,
                            size: 24,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PantallaMesasWidget()));
                      },
                      style: ElevatedButton.styleFrom(
                        fixedSize: const Size(150, 40),
                        backgroundColor:
                            const Color.fromARGB(162, 94, 182, 182),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Text(
                        'Empezar',
                        style: TextStyle(
                          fontFamily: 'Amaranth',
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
