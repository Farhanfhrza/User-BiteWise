import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFFF2EDE8),
        body: Center( 
          //alignment: Alignment.topCenter, 
          child: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 400,
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
                          height: 1.75,
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

              Container(
                alignment: Alignment.bottomCenter,
                padding: EdgeInsets.only(bottom: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
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
                        ),
                      ),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
