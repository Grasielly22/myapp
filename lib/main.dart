import 'package:flutter/material.dart';

void main() {
  runApp(const MinhaClasse());
}

class MinhaClasse extends StatelessWidget {
  const MinhaClasse({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 158, 12, 160)),
        useMaterial3: true,
      ),
      home: const PrimeiraPagina(title: 'Programa da Grasi'),
    );
  }
}

class PrimeiraPagina extends StatefulWidget {
  const PrimeiraPagina({super.key, required this.title});

  final String title;

  @override
  State<PrimeiraPagina> createState() => _PrimeiraPaginaState();
}

class _PrimeiraPaginaState extends State<PrimeiraPagina> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
     
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        actions: [ IconButton( 
          icon: const Icon(Icons.search),
          onPressed: () {
          print('Botão de pesquisa pressionado'); 
        }, 
       ),
    ],
      ),
      body: Center(
       
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Aperte no coração de acordo com o quanto você gosta de Strogonoff:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Adicionar',
        child: const Icon(Icons.favorite),
      ), 
    );
  }
}
