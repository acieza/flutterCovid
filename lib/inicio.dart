import 'package:flutter/material.dart';

class Inicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: <Widget>[
            Container(
              color: Colors.blue,
              height: double.infinity,
              width: double.infinity,
              child: Image(
                image: AssetImage("assets/img/fondo.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 600),
                height: 35,
                width: 100,
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                    child: InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, 'register');
                        },
                        child: Text(
                          'Entrar',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
