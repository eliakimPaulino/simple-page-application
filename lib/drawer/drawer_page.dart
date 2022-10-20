import 'package:flutter/material.dart';

class DrawerPage extends StatefulWidget {
  const DrawerPage({Key? key}) : super(key: key);

  @override
  State<DrawerPage> createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      width: MediaQuery.of(context).size.width / 2.5,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                decoration: const BoxDecoration(color: Colors.white),
                currentAccountPicture: ClipRRect(
                  borderRadius: BorderRadius.circular(36),
                  child: Image.asset('assets/img/favicon.png'),
                ),
                accountName: const Text(
                  'Contact Mais',
                  style: TextStyle(color: Colors.black),
                ),
                accountEmail: const Text(
                  'contato@contactmais.com.br',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              ListTile(
                title: const Text(
                  'Menu',
                  style: TextStyle(color: Colors.orange),
                ),
                // leading: const Icon(Icons.menu),
                trailing: IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(Icons.close, color: Colors.black),
                ),
              ),
              ...List.generate(
                __buttonsNames.length,
                (index) => Column(
                  children: [
                    Container(
                      decoration: index == _currentIndex
                          ? BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient: const LinearGradient(
                                colors: [Colors.orange, Colors.red],
                              ),
                            )
                          : null,
                      child: ListTile(
                        title: Text(
                          __buttonsNames[index].title,
                          style: const TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        leading: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Icon(
                            __buttonsNames[index].icon,
                            color: Colors.black,
                          ),
                        ),
                        onTap: () {
                          setState(() {
                            _currentIndex = index;
                          });
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
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

class MenuOptions {
  String title;
  IconData icon;
  MenuOptions({
    required this.title,
    required this.icon,
  });
}

int _currentIndex = 0;

List<MenuOptions> __buttonsNames = [
  MenuOptions(title: 'Início', icon: Icons.home),
  MenuOptions(title: 'Serviços', icon: Icons.supervised_user_circle_outlined),
  MenuOptions(title: 'Sobre', icon: Icons.add_business_outlined),
];
