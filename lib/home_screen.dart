import 'package:flutter/material.dart';
import 'novo_botao.dart';
import 'lists.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.transparent,
              ),
              child: Text(''),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {},
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text('Home'),
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: FocusScope(
            child: Wrap(
              runSpacing: 10,
              children: [
                for (int i = 0; i < 12; i++)
                  NovoBotao(
                      backgroundColor: cores[i],
                      icon: icones[i],
                      buttonName: nomesIcones[i],
                      funcao: choices[i]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
