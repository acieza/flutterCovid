import 'package:flutter/material.dart';
import 'package:fluttercovid/inicio.dart';
import 'package:fluttercovid/register.dart';

final routes = <String, WidgetBuilder>{
  'inicio': (BuildContext context) => Inicio(),
  'register': (BuildContext context) => Register(),
};
