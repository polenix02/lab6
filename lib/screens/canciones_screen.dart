import 'package:app_multiplataforma/themes/app_theme.dart';
import 'package:flutter/material.dart';

class CancionesScreen extends StatelessWidget {
  final opciones = const [
    'Señorita',
    'Attention',
    'Perfect',
    'Shape of You',
    'Animals'
  ];
  const CancionesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Canciones'),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                leading: const Icon(Icons.music_note, color: AppTheme.primary),
                title: Text(opciones[index]),
                trailing: const Icon(Icons.arrow_forward_ios, color: AppTheme.primary,),
                onTap: () {
                  final opciones1 = opciones[index];
                  print(opciones1);
                },),
            separatorBuilder: (context, index) => const Divider(),
            itemCount: opciones.length));
  }
}
