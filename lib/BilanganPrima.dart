import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bilangan Prima',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _formKey = GlobalKey<FormState>();
  final _startController = TextEditingController();
  final _endController = TextEditingController();
  String _result = '';

  @override
  void dispose() {
    _startController.dispose();
    _endController.dispose();
    super.dispose();
  }

  // Fungsi untuk mengecek apakah sebuah bilangan adalah bilangan prima
  bool _isPrime(int number) {
    if (number <= 1) return false;
    if (number == 2) return true;
    for (int i = 2; i <= number ~/ 2; i++) {
      if (number % i == 0) return false;
    }
    return true;
  }

  // Fungsi untuk mencari bilangan prima dalam rentang tertentu
  List<int> _findPrimes(int start, int end) {
    List<int> primes = [];
    for (int i = start; i <= end; i++) {
      if (_isPrime(i)) {
        primes.add(i);
      }
    }
    return primes;
  }

  void _calculatePrimes() {
    if (_formKey.currentState?.validate() ?? false) {
      int start = int.parse(_startController.text);
      int end = int.parse(_endController.text);
      List<int> primes = _findPrimes(start, end);
      setState(() {
        _result = primes.isNotEmpty
            ? 'Bilangan prima antara $start dan $end: ${primes.join(', ')}'
            : 'Tidak ada bilangan prima antara $start dan $end.';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bilangan Prima'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                controller: _startController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Bilangan Awal',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Masukkan bilangan awal';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _endController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Bilangan Akhir',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Masukkan bilangan akhir';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _calculatePrimes,
                child: const Text('Cari Bilangan Prima'),
              ),
              const SizedBox(height: 20),
              Text(
                _result,
                style: const TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}