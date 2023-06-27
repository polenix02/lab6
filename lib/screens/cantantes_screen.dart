import 'package:app_multiplataforma/themes/app_theme.dart';
import 'package:flutter/material.dart';

class CantantesScreen extends StatelessWidget {
  final opciones = const [
    'Bruno Mars',
    'Ed Sheeran',
    'charlie puth',
    'Shawn Mendez',
  ];
  const CantantesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Cantantes'),
        ),
        body: ListView(
          children: [
            ...opciones
                .map((e) => ListTile(
                      leading: const Icon(Icons.queue_music,
                          color: AppTheme.primary),
                      title: Text(e),
                      trailing: const Icon(
                        Icons.arrow_circle_right,
                         color: AppTheme.primary,
                      ),
                    ))
                .toList(),
          ],
        ));
  }
}
