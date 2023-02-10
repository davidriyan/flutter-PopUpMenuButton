import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String title = 'default';

  final menu1 = 'menu 1';

  final menu2 = 'menu 2';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Popup Menu Button'),
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 15,
        ),
        centerTitle: true,
      ),
      body: Center(
        child: SizedBox(
          width: 200,
          child: ListTile(
            title: Text(title),
            trailing: PopupMenuButton(
              itemBuilder: (context) => [
                // membuat list menu
                PopupMenuItem(
                  value: menu1,
                  child: Text(menu1),
                ),
                PopupMenuItem(
                  value: menu2,
                  child: Text(menu2),
                ),
              ],
              //membuat function selected
              onSelected: (String newValue) {
                setState(() {
                  title = newValue;
                });
              },
              elevation: 20,
            ),
          ),
        ),
      ),
    );
  }
}
