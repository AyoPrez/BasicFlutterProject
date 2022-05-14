import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Lucha Canaria fantasy"),
          automaticallyImplyLeading: false,
          actions: [
            //switch between dark and light mode
            Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: MouseRegion(
                  child: GestureDetector(
                    onTap: () {},
                    child: Icon(
                      Icons.nightlight,
                      size: 26.0,
                    ),
                  ),
                )
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(80.0),
          child: Center(
            child: Container(
              width: 400,
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: MouseRegion(child: TextField()),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: MouseRegion(child: TextField()),
                  ),
                  Wrap(children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: MouseRegion(
                        child: OutlinedButton(onPressed: () {
                          Navigator.pushNamed(context, "/pricipal/:user");
                        }, child: Text("Iniciar sesión")),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: MouseRegion(
                        child: OutlinedButton(onPressed: () {
                          Navigator.pushNamed(context, "/registro");
                        }, child: Text("Crear cuenta")),
                      ),
                    ),
                  ])
                ],
              ),
            ),
          ),
        ));
  }
}
