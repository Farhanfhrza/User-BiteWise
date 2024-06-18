import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Register',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RegisterPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  String _username = '';
  String _email = '';
  String _password = '';
  String _password_confirm = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2EDE8),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 300,
              decoration: BoxDecoration(
                  color: Color(0xFF022F30),
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(30),
                  )
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
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
                    alignment: Alignment.center,
                    child: Text(
                      'Daftar dengan Email',
                      style: TextStyle(
                        color: Color(0xFFF2ECE7),
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: 280,
                      child: Text(
                        'Nikmati rekomendasi gizi terbaik khusus untuk Anda! Segera mendaftar di aplikasi kami sekarang juga.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFFF2ECE7),
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    )
                  ),
                ],
              ),
            ),

            SizedBox(height: 20.0),

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
                          decoration: InputDecoration(labelText: 'Username'),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter a username';
                            }
                              return null;
                            },
                            onSaved: (value) {
                             _username = value!;
                             },
                        ),
                        SizedBox(height: 20.0),

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

                        TextFormField(
                          decoration: InputDecoration(labelText: 'Konfirmasi Sandi'),
                          obscureText: true,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter a password';
                            }
                            return null;
                          },
                          onSaved: (value) {
                            _password_confirm = value!;
                          },
                        ),

                        SizedBox(height: 30),
                        ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              _formKey.currentState!.save();
                              // Perform registration logic here
                              print('Username: $_username');
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
                ),
                ],
              ),
            )
          ],
        )
      )
    );
  }
}
