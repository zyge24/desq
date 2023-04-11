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
      title: 'DesQ',
      theme: ThemeData(
       // useMaterial3: true,

        primaryColor: Colors.green,
        secondaryHeaderColor: Colors.green,
        primaryColorLight: Colors.green,

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
        centerTitle: true,

        leading: Icon(Icons.menu, size: 40),
        actions: [Container( padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
          child:Icon(
            Icons.search,
            size: 40,
            shadows: [Shadow(color: Colors.black, blurRadius: 15.0)],

          ),)
        ],
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
        //bottom: Text("ASD"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ItemCard(
                itemName: "Testi 1",
                price: "300,00€",
                image: 'graphics/photo1.jpg'),
            ItemCard(
                itemName: "Testi 2",
                price: "200,00€",
                image: 'graphics/photo2.jpg'),
            ItemCard(
                itemName: "Testi 3",
                price: "300,00€",
                image: 'graphics/photo3.jpg'),
            ItemCard(
                itemName: "Testi 4",
                price: "200,00€",
                image: 'graphics/photo4.jpg'),
            ItemCard(
                itemName: "Testi 5",
                price: "300,00€",
                image: 'graphics/photo5.jpg'),
            ItemCard(
                itemName: "Testi 6",
                price: "200,00€",
                image: 'graphics/photo1.jpg'),
            ItemCard(
                itemName: "Testi 7",
                price: "300,00€",
                image: 'graphics/photo2.jpg'),
            ItemCard(
                itemName: "Testi 8",
                price: "200,00€",
                image: 'graphics/photo3.jpg'),
            ItemCard(
                itemName: "Testi 9",
                price: "300,00€",
                image: 'graphics/photo4.jpg'),
            ItemCard(
                itemName: "Testi 10",
                price: "200,00€",
                image: 'graphics/photo5.jpg'),
            ItemCard(
                itemName: "Testi 11",
                price: "300,00€",
                image: 'graphics/photo1.jpg'),
            ItemCard(
                itemName: "Testi 12",
                price: "200,00€",
                image: 'graphics/photo2.jpg'),
            ItemCard(
                itemName: "Testi 13",
                price: "300,00€",
                image: 'graphics/photo3.jpg'),
            ItemCard(
                itemName: "Testi 14",
                price: "200,00€",
                image: 'graphics/photo4.jpg'),
            ItemCard(
                itemName: "Testi 15",
                price: "100,00€",
                image: 'graphics/photo5.jpg')
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black87,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: OverflowBar(
            overflowAlignment: OverflowBarAlignment.center,
            alignment: MainAxisAlignment.spaceBetween,
            overflowSpacing: 5.0,
            children: <Widget>[
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
          ),
                onPressed: () {
                  setState(() {

                  });
                },
                icon: Icon(Icons.favorite_border,
                ),
                label: const Text('Omat suosikit'),
              ),

        Container(
          //alignment: AlignmentDirectional.bottomEnd,
          child:
              CircleAvatar(
          radius: 25,
          backgroundColor: Colors.white70,
          child: IconButton(
                onPressed: () {
                },
                icon: const Icon(Icons.add),
          )
              ),)
            ],
          ),
        ),
      ),
    );
  }
}

class ItemCard extends StatelessWidget {
  final String itemName;
  final String price;
  final String image;

  const ItemCard(
      {Key? key,
      required this.itemName,
      required this.price,
      required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      color: Colors.black,
      elevation: 5,
      shadowColor: Colors.black,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            flex: 3,
            child: Container(
              alignment: Alignment.topLeft,
              child: ListTile(
                textColor: Colors.white,
                iconColor: Colors.black,
                leading: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.green,
                  child: IconButton(
                    icon: Icon(
                      Icons.favorite_border,
                      color: Colors.black,
                    ),
                      onPressed: () {

                }
                  ),
                ),
                title: Text(itemName),
                subtitle: Text(price),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
                child: Image.asset(image,
                    width: 100, height: 100, fit: BoxFit.cover)),
          )
        ],
      ),
    );
  }
}
