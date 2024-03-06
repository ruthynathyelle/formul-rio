import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Entrada de dados'),
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
 
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        
        title: Text(widget.title,
        style: const TextStyle(
          color: Colors.white
         )
        ),
      ),
    body: Padding(
      padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text ('Seja Bem vindo! Aplicativo para entrada de Dados:',
              style: const TextStyle(
                color: Colors.blue,
                fontSize: 20,
              )
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Dados Pessoais:',
                    ),
                  ),
                ),
                Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Idade:',
                    ),
                  ),
                ),
                Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'E-mail:',
                    ),
                  ),
                ),
                Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Celular:',
                    ),
                  ),
                ),
                Padding(
                padding: const EdgeInsets.symmetric(vertical:16.0),
                child: ElevatedButton(
                  onPressed: () {
                  },
                  child: const Text('Salvar'),
                ),
              ),
          ],
          ),
        ),

    ),
    );
  }
}
