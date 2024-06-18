import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFFF2EDE8),
        body: Center( 
          //alignment: Alignment.topCenter, 
          child: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 350,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                color: Color(0xFF022F30),
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(30),
                  )
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Yuk, makan sehat bareng kita!',
                        style: TextStyle(
                          color: Color(0xFFF2ECE7),
                          fontSize: 52,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        '#BiteWise',
                        style: TextStyle(
                          color: Color(0xFFF2ECE7),
                          fontSize: 30,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20.0),

              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Menyebarakan tombol secara merata
                children: <Widget>[
                  ElevatedButton.icon(
                    onPressed: () {
                      // Aksi untuk tombol pertama
                      print('Button 1 Pressed');
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(350, 50),
                      backgroundColor: Color(0xFFFCFBF7),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                        side: BorderSide(
                          color: Color(0xFFA5B5A4),
                          width: 3.0,
                        )
                      )
                    ),
                    icon: Image.asset('assets/images/google-logo.png',
                    width: 30.0,
                    height: 30.0,
                    ), 
                    label: Text(
                      'Masuk dengan Google',
                      style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                        ),),
                  ),
                  SizedBox(height: 20.0),
                  ElevatedButton.icon(
                    onPressed: () {
                      // Aksi untuk tombol kedua
                      print('Button 2 Pressed');
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(350, 50),
                      backgroundColor: Color(0xFFFCFBF7),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                        side: BorderSide(
                          color: Color(0xFFA5B5A4),
                          width: 3.0,
                        )
                      ) // Warna latar belakang tombol
                    ), 
                    icon: Image.asset('assets/images/Facebook_Logo.png',
                    width: 30.0,
                    height: 30.0,
                    ),
                    label: Text(
                      'Masuk dengan Facebook',
                      style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'Atau',
                    style: TextStyle(
                      color: Color(0xFF8888888),
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  ElevatedButton(
                    onPressed: () {
                      // Aksi untuk tombol kedua
                      print('Button 2 Pressed');
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(350, 50),
                      backgroundColor: Color(0xFFFCFBF7),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                        side: BorderSide(
                          color: Color(0xFFA5B5A4),
                          width: 3.0,
                        )
                      ) // Warna latar belakang tombol
                    ), 
                    child: Text(
                      'Masuk dengan Email',
                      style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                  ),
                  SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Belum punya akun?',
                        style: TextStyle(
                          color: Color.fromARGB(248, 0, 0, 0),
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          print('Sign Up');
                        },
                        child: Text(
                          'Buat akun di sini!',
                          style: TextStyle(
                              color: Color(0xFF4F6F52),
                              fontSize: 16,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
          
        // appBar: PreferredSize(
        //   preferredSize: Size.fromHeight(300.0),
          
        //   child: ClipPath(
        //     child: AppBar(
        //       shape: RoundedRectangleBorder(
        //     borderRadius: BorderRadius.vertical(
        //       bottom: Radius.circular(30),
        //     )
        //   ),
        //       titleTextStyle: TextStyle(
        //         color : Color(0xFFF2ECE7),
        //         fontSize: 36,
        //         fontWeight: FontWeight.bold,
        //       ),
        //       title: Wrap(
        //         spacing: 10.0, // Increase spacing between items
        //         runSpacing: 15.0,
        //         children: [Text('Yuk, makan'),
        //         Text('sehat bareng'),
        //         Text('kita!')],
        //         ),
        //       backgroundColor: Color(0xFF022F30),
        //       flexibleSpace: Container(
        //         decoration: BoxDecoration(
        //           gradient: LinearGradient(
        //             begin: Alignment.topLeft,
        //             end: Alignment.bottomRight,
        //             colors: [
        //               Color(0xFF022F30),
        //               Color(0xFF022F30),
        //             ],
        //           ),
        //         )
        //       ),
        //     ),
        //   ),
        // ),
      ),
    );
  }
}


class CustomAppBarClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height - 20); // Titik kiri bawah dari AppBar
    path.quadraticBezierTo(size.width / 2, size.height, size.width, size.height - 20);
    // Melengkung ke kanan bawah
    path.lineTo(size.width, 0); // Titik kanan atas
    path.close(); // Menutup path
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

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
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
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
