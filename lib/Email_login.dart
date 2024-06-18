import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override

  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    String _email = '';
    String _password = '';
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
                decoration: BoxDecoration(
                    color: Color(0xFF022F30),
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(30),
                    )
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        print('Back button pressed');
                      },
                      child: Container(
                        alignment: Alignment.topLeft,
                        padding: EdgeInsets.only(left: 10),
                        child: Image.asset(
                          'assets/images/Back.png',
                          width: 50,
                          height: 50,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Text(
                        'Masuk yuk, ke Bitewise!',
                        style: TextStyle(
                          color: Color(0xFFF2ECE7),
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Align(
                        alignment: Alignment.center,
                        child: Container(
                          width: 350,
                          child: Text(
                            'Senang bertemu lagi! Masuk dengan akun sosial atau email untuk lanjut bersama kami.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFFF2ECE7),
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        )
                    ),
                    SizedBox(height: 20.0),
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
                  ],
                ),
              ),

              SizedBox(height: 0.0),

              Container(
                alignment: Alignment.bottomCenter,
                padding: EdgeInsets.only(bottom: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: 10.0),
                    Text(
                      'Atau',
                      style: TextStyle(
                        color: Color(0xFF8888888),
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                    ),

                    SizedBox(height: 0.0),

                    Container(
                      alignment: Alignment.center,
                      child: Column(
                          children: <Widget>[
                            Padding(
                                padding: EdgeInsets.all(16.0),
                                child: Form(
                                  key: _formKey,
                                  child : SingleChildScrollView(
                                    child: Column(
                                      children: <Widget>[
                                        TextFormField(
                                          decoration: InputDecoration(labelText: 'Email'),
                                          keyboardType: TextInputType.emailAddress,
                                          validator: (value) {
                                            if (value!.isEmpty) {
                                              return 'Please enter an email';
                                            }
                                            return null;
                                          },
                                          onSaved: (value) {
                                            _email = value!;
                                          },
                                        ),
                                        SizedBox(height: 20.0),

                                        TextFormField(
                                          decoration: InputDecoration(labelText: 'Kata Sandi'),
                                          obscureText: true,
                                          validator: (value) {
                                            if (value!.isEmpty) {
                                              return 'Please enter a password';
                                            }
                                            return null;
                                          },
                                          onSaved: (value) {
                                            _password = value!;
                                          },
                                        ),
                                        SizedBox(height: 20.0),

                                        ElevatedButton(
                                          onPressed: () {
                                            if (_formKey.currentState!.validate()) {
                                              _formKey.currentState!.save();
                                              // Perform registration logic here
                                              print('Email: $_email');
                                              print('Password: $_password');
                                            }
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
                                          child: Text(
                                            'Buat Akun',
                                            style: TextStyle(
                                              color: Color.fromARGB(255, 0, 0, 0),
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                            )
                          ]
                      ),
                    ),

                    SizedBox(height: 10.0),

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
