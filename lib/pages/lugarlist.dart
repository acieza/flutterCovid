import 'package:flutter/material.dart';
import 'package:fluttercovid/models/lugar.dart';

class LugarList extends StatelessWidget {
  final List<Lugar> lugar;
  const LugarList({Key key, this.lugar}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: lugar == null ? 0 : lugar.length,
      itemBuilder: (BuildContext context, int index) {
        return Card(
            /* child: Column(
            children: <Widget>[
              Text(lugar[index].fallecidos.toString()),
              Text(covid[index].recuperados.toString()),
              Text(covid[index].positivos.toString())
            ],*/
            child: InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DetailWidget(lugar[index])));
          },
        ));
      },
    );
  }
}
