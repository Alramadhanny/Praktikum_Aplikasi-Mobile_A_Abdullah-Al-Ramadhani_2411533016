import 'package:flutter/material.dart';
import 'layouts/container_layout.dart';
import 'layouts/row_column_layout.dart';
import 'layouts/stack_layout.dart';
import 'layouts/listview_layout.dart';
import 'layouts/gridview_layout.dart';
import 'layouts/wrap_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Layout Widgets',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: const LayoutDemoPage(),
    );
  }
}

class LayoutDemoPage extends StatelessWidget {
  const LayoutDemoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Flutter Layout Widgets Demo',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        elevation: 2,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 16),
            // Container Layout
            const ContainerLayout(),
            const Divider(thickness: 2, height: 32),
            
            // Row & Column Layout
            const RowColumnLayout(),
            const Divider(thickness: 2, height: 32),
            
            // Stack Layout
            const StackLayout(),
            const Divider(thickness: 2, height: 32),
            
            // ListView Layout
            const ListViewLayout(),
            const Divider(thickness: 2, height: 32),
            
            // GridView Layout
            const GridViewLayout(),
            const Divider(thickness: 2, height: 32),
            
            // Wrap Layout
            const WrapLayout(),
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}
