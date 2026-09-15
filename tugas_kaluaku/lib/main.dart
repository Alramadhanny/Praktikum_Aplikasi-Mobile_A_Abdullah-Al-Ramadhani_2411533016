import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kalkulator Sederhana',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const CalculatorPage(),
    );
  }
}

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  // Controllers untuk TextField
  final TextEditingController _number1Controller = TextEditingController();
  final TextEditingController _number2Controller = TextEditingController();
  
  // Variable untuk menyimpan hasil
  String _result = '0';
  
  // Fungsi untuk melakukan operasi kabataku
  void _calculate(String operation) {
    // Validasi input
    if (_number1Controller.text.isEmpty || _number2Controller.text.isEmpty) {
      setState(() {
        _result = 'Masukkan kedua angka!';
      });
      return;
    }
    
    try {
      double num1 = double.parse(_number1Controller.text);
      double num2 = double.parse(_number2Controller.text);
      double result = 0;
      
      switch (operation) {
        case '+':
          result = num1 + num2;
          break;
        case '-':
          result = num1 - num2;
          break;
        case '*':
          result = num1 * num2;
          break;
        case '/':
          if (num2 == 0) {
            setState(() {
              _result = 'Tidak bisa dibagi 0!';
            });
            return;
          }
          result = num1 / num2;
          break;
      }
      
      setState(() {
        // Format hasil, hilangkan desimal jika .0
        _result = result % 1 == 0 
            ? result.toInt().toString() 
            : result.toStringAsFixed(2);
      });
    } catch (e) {
      setState(() {
        _result = 'Input tidak valid!';
      });
    }
  }
  
  @override
  void dispose() {
    _number1Controller.dispose();
    _number2Controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kalkulator Sederhana'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // TextField untuk angka pertama
            TextField(
              controller: _number1Controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Angka Pertama',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.looks_one),
              ),
            ),
            const SizedBox(height: 16),
            
            // TextField untuk angka kedua
            TextField(
              controller: _number2Controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Angka Kedua',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.looks_two),
              ),
            ),
            const SizedBox(height: 24),
            
            // Row untuk tombol operasi kabataku
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Tombol Tambah
                ElevatedButton(
                  onPressed: () => _calculate('+'),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(20),
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                  ),
                  child: const Text('+', style: TextStyle(fontSize: 24)),
                ),
                
                // Tombol Kurang
                ElevatedButton(
                  onPressed: () => _calculate('-'),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(20),
                    backgroundColor: Colors.orange,
                    foregroundColor: Colors.white,
                  ),
                  child: const Text('-', style: TextStyle(fontSize: 24)),
                ),
                
                // Tombol Kali
                ElevatedButton(
                  onPressed: () => _calculate('*'),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(20),
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                  ),
                  child: const Text('×', style: TextStyle(fontSize: 24)),
                ),
                
                // Tombol Bagi
                ElevatedButton(
                  onPressed: () => _calculate('/'),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(20),
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white,
                  ),
                  child: const Text('÷', style: TextStyle(fontSize: 24)),
                ),
              ],
            ),
            const SizedBox(height: 32),
            
            // Card untuk menampilkan hasil
            Card(
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  children: [
                    const Text(
                      'Hasil:',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      _result,
                      style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            
            // Tombol Clear
            OutlinedButton.icon(
              onPressed: () {
                setState(() {
                  _number1Controller.clear();
                  _number2Controller.clear();
                  _result = '0';
                });
              },
              icon: const Icon(Icons.clear),
              label: const Text('Clear'),
              style: OutlinedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
