import 'package:flutter/material.dart';

class InputDecorations {
  static InputDecoration authInputDecoration(
      {required String sugerencia, required String etiqueta, IconData? icono}) {
    return InputDecoration(
        enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.deepPurple)),
        focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.deepPurple, width: 2)),
        hintText: sugerencia,
        labelText: etiqueta,
        labelStyle: const TextStyle(color: Colors.grey),
        prefixIcon: icono != null
            ? Icon(
                icono,
                color: Colors.deepPurple,
              )
            : null);
  }
}
