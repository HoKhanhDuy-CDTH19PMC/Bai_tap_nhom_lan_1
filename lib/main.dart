import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

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



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Padding(

        padding: EdgeInsets.fromLTRB(10, 70, 10, 0),
          child: ListView(
           children: <Widget>[
        Container(
          margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
          alignment: Alignment.center,
          padding: EdgeInsets.all(10),
    child: Text(
      'Username',
      style: TextStyle(fontWeight: FontWeight.bold,color: Colors.cyan,fontSize: 20),
    ),



        ),
             Container(

               padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
               child: TextField(
                 //inputFormatters: [
                  // FilteringTextInputFormatter.allow(RegExp("a-z A-Z 0-9")),],

              maxLength: 15,
                 //k the hien password
                 obscureText: false,
                 decoration:InputDecoration(
                   border: OutlineInputBorder(),
                   labelText: 'Tên đăng nhập',
                   hintText:'Tên đăng nhập',
                 ),
               ),
             ),
             Container(

               alignment: Alignment.center,
               padding: EdgeInsets.all(10),
               child: Text(

                 'Password',
                 style: TextStyle(fontWeight: FontWeight.bold,color: Colors.cyan,fontSize: 20),
               ),



             ),
             Container(

               padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
               child: TextField(

                 maxLength:12,
                 obscureText: true,
                 decoration: InputDecoration(
                   border: OutlineInputBorder(),
                   labelText: 'Mật khẩu',
                 ),
               ),
             ),
           ],
      ),

    /*  child: Padding(
       padding: const EdgeInsets.all(25.0),

        child: Column(



          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Username:',

            ),
            Text(
              '',
              style: Theme.of(context).textTheme.headline4,
            ),
            const TextField(
              decoration: InputDecoration(hintText: 'Tên đăng nhập',border: OutlineInputBorder(
              ),
              ),
            ),
          ],

        ),
      ),*/

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
