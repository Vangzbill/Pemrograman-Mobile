import 'package:flutter/material.dart';
import 'tab1_content.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyApp',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('MyApp'),
            bottom: TabBar(
              tabs: [
                Tab(
                  text: 'Berita Terbaru',
                ),
                Tab(
                  text: 'Pertandingan Hari Ini',
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Tab1Content(),
              Center(
                child: Text(
                  'Konten Pertandingan Hari Ini',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}
