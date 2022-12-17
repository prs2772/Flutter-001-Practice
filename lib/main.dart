import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:paris_trips/AppContent/description_place.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //return _secondChallenge(context);
    return _exerciseOne(context);
  }





  Widget _exerciseOne(BuildContext context){
    String namePlace = 'Xcaret';
    int stars = 5;
    String descriptionPlace = 'Xcaret is the park in Cancun where you will experience Mexico in more than 50 attractions for the whole family. Swim in underground rivers that are born from the heart of the earth. Get a close look at the inhabitants of the Aviary, the Coral Reef Aquarium and the Butterfly Garden. Eat delicious typical and international dishes. Get to know Mayan archaeological vestiges and get excited with the presentation of Xcaret México.';

    return MaterialApp(
      title: 'First execise',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(
              Icons.home,
              color: Colors.white,
            ),
            onPressed: ()=>Navigator.of(context).pop(),
          ),
          title: Text(namePlace),
          centerTitle: false,
        ),
        body: DescriptionPlace(namePlace,stars, descriptionPlace),
        floatingActionButton: FloatingActionButton(
          child: const Icon(
              Icons.add
          ),
          onPressed: ()=>{},
        ),
      ),
    );
  }







  Widget _secondChallenge(BuildContext context){
    return MaterialApp(
        title: 'Second challenge',
        theme: ThemeData(
          primarySwatch: Colors.pink,
        ),
        home: Scaffold(
            appBar: AppBar(
              leading: IconButton(
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
                onPressed: ()=>Navigator.of(context).pop(),
              ),
              title: const Text("Share"),
              centerTitle: false,
            ),
            body: Stack(
              children: <Widget>[
                _backImage(),
                _centerDisplayText(),
              ],
            ),
            floatingActionButton: FloatingActionButton(
              child: const Icon(
                Icons.add
              ),
              onPressed: ()=>{},
            ),
        )
    );
  }
  Widget _backImage(){
    return const Image(
      image: AssetImage('assets/images/back001.jpg'),
      height: double.infinity,
      width: double.infinity,
      fit: BoxFit.cover,
    );
  }
  Widget _centerDisplayText(){
    return Center(
      child: Container(
        height: 70,
        color: const Color.fromRGBO(0, 0, 0, 0.4),
        child: const Center(
          child: Text(
            'City NeoTokyo',
            style: TextStyle(
              fontSize: 39,
              color: Colors.white70,
            ),
          ),
        ),
      ),
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
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
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
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
