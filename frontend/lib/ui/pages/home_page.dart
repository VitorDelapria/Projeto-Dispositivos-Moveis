import 'package:flutter/material.dart';
import 'package:frontend/ui/pages/login_page.dart';
import 'package:frontend/ui/widgets/navigation_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  static const TextStyle optionStyle =
      TextStyle(fontSize: 50, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Profile',
      style: optionStyle,
    ),
    Text(
      'Index 2: Message',
      style: optionStyle,
    ),
    Text(
      'Index 3: Config',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1D1D1D), // Cor de fundo da página
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Home',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 224, 224, 224),
            ),
          ),
        ),
        elevation: 0, // Remove a sombra da AppBar
        backgroundColor: const Color(0xFF6B1E00), // Cor de fundo da AppBar
        titleTextStyle: const TextStyle(
          color: Colors.white, // Cor do texto do título
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
        iconTheme: const IconThemeData(
          color: Colors.white, // Cor dos ícones da AppBar
        ),
      ),
      body: _selectedIndex == 0
          ? ListView(
              children: [
                const SizedBox(height: 15),
                // Card Criação de Fichas
                NavigationCard(
                  title: "Criar Ficha",
                  icon: Icons.plus_one_sharp,
                  destination: LoginPage(),
                ),
                // Card Sessões
                NavigationCard(
                  title: "Sessão",
                  icon: Icons.sticky_note_2,
                  destination: LoginPage(),
                ),
                // Card Biblioteca
                NavigationCard(
                  title: "Biblioteca",
                  icon: Icons.book,
                  destination: LoginPage(),
                ),
              ],
            )
          : Center(child: _widgetOptions.elementAt(_selectedIndex)),
      bottomNavigationBar:  BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message),
              label: 'Message',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.menu_sharp),
              label: 'Config',  // Certifique-se de que o ícone e label estão corretos
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          backgroundColor: const Color(0xFF6B1E00),
          onTap: _onItemTapped,
        ),
    );
  }
}
