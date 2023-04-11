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
      title: 'DesQ',
      theme: ThemeData(
        primaryColor: Colors.green,
        fontFamily: 'Georgia',
        textTheme: const TextTheme(
          displayLarge: TextStyle(
              fontSize: 72.0, fontWeight: FontWeight.bold, color: Colors.green),
          titleLarge: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
          bodyMedium: TextStyle(
              fontSize: 14.0, fontFamily: 'Hind', color: Colors.white),
          displaySmall: TextStyle(color: Colors.white),
          bodySmall: TextStyle(color: Colors.white),
          labelSmall: TextStyle(color: Colors.white),
          headlineSmall: TextStyle(color: Colors.white),
          headlineMedium: TextStyle(color: Colors.white),

        ),
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'DesQ'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ItemCard(itemName: "Testi 1", price: "300,00€"),
            ItemCard(itemName: "Testi 2", price: "200,00€"),
            ItemCard(itemName: "Testi 3", price: "300,00€"),
            ItemCard(itemName: "Testi 4", price: "200,00€"),
            ItemCard(itemName: "Testi 5", price: "300,00€"),
            ItemCard(itemName: "Testi 6", price: "200,00€"),
            ItemCard(itemName: "Testi 7", price: "300,00€"),
            ItemCard(itemName: "Testi 8", price: "200,00€"),
            ItemCard(itemName: "Testi 9", price: "300,00€"),
            ItemCard(itemName: "Testi 10", price: "200,00€"),
            ItemCard(itemName: "Testi 11", price: "300,00€"),
            ItemCard(itemName: "Testi 12", price: "200,00€"),
            ItemCard(itemName: "Testi 13", price: "300,00€"),
            ItemCard(itemName: "Testi 14", price: "200,00€"),
            ItemCard(itemName: "Testi 15", price: "100,00€")
          ],
        ),
      ),
    );
  }
}

class ItemCard extends StatelessWidget {
  final String itemName;
  final String price;

  const ItemCard({Key? key, required this.itemName, required this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            textColor: Colors.white,
            iconColor: Colors.lightGreen,
            leading: Icon(Icons.heart_broken),
            title: Text(itemName),
            subtitle: Text(price),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Image(image: image)
              TextButton(
                child: const Text('BUY TICKETS'),
                onPressed: () {
                  /* ... */
                },
              ),
              const SizedBox(width: 8),
              TextButton(
                child: const Text('LISTEN'),
                onPressed: () {
                  /* ... */
                },
              ),
              const SizedBox(width: 8),
            ],
          ),
        ],
      ),
    );
  }
}
