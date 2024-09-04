import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exercício 03',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.brown),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Exercício 03'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _frases = [
    "Gather ye rose-buds while ye may\nOld time's still a-flying\nAnd the same flower that smiles today\nTomorrow will be dying",
    "The snow goose need not bathe to make himself white. Neither need you do anything but be yourself.",
    "Termina hollow knight logo\n~Julia Hille",
    "And you run, and you run\nTo catch up with the sun, but it's sinking\nAnd racing around\nTo come up behind you again\nThe sun is the same in a relative way\nBut you're older\nShorter of breath\nAnd one day closer to death",
    "The fog is coming",
    "Bleh :P",
    "Prefiro a sintaxe de C",
    "Sem ideias",
    "Gengar melhor pokémon",
    "https://youtu.be/dQw4w9WgXcQ?si=K2dYTLh0LvwUoXrj",
  ];
  int _fraseAtual = 0;

  void _changePhrase() {
    var rng = Random();

    setState(() {
      _fraseAtual = rng.nextInt(_frases.length);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
             Text(
              'Frase ${_fraseAtual + 1}',
               textAlign: TextAlign.left,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child:
                Text(
                  '"${_frases[_fraseAtual]}"',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
            )
          ],
        ),
      ),
      bottomNavigationBar : Container(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            const Text(
              textAlign: TextAlign.end,
                'Eduardo Bizzi'
            ),
            FloatingActionButton(
              onPressed: _changePhrase,
              tooltip: 'Frase aleatória',
              child: const Icon(Icons.casino),
            ),
          ],
        ),
      ),
    );
  }
}
