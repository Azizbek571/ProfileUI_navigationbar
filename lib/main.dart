

import 'package:profile_ui_drawer_example/dafaults/imports.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

var indexclicked = 0;

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final pages = [
    Center(child: Text('Входящие')),
    Center(child: Text('Избранное')),
    Center(child: Text('Отправленные')),
    Center(child: Text('Черновики')),
    Center(child: Text('Корзина')),
    Center(child: Text('Спам')),
  ];

  Function updateState(int index) {
    return () {
      setState(() {
        indexclicked = index;
      });
      Navigator.pop(context);
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile navigation bar example'),
      ),
      body: pages[indexclicked],
      drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/images/drawer.jpg'))),
              padding: EdgeInsets.all(0),
              child: Column(
                children: [
              SizedBox(height: 10),
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/images/man.jpg'),
              ),
              SizedBox(height: 10),
              Text(
                'Антон',
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(height: 5),
              Text(
                'anton77@gmail.com',
                style: TextStyle(
                    fontSize: 10,
                    color: Colors.white,
                    fontWeight: FontWeight.w400),
              ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: ListTile(
                      onTap: () {
                        setState(() {
                          indexclicked = 0;
                        });
                        Navigator.pop(context);
                      },
                      selected: indexclicked == 0,
                      selectedTileColor: Defaults.drawerSelectedTileColor,
                      leading: Icon(
                        Defaults.drawerItemIcon[0],
                        size: 35,
                        color: indexclicked == 0
                            ? Defaults.drawerItemSelectedColor
                            : Defaults.drawerItemColor,
                      ),
                      title: Text(
                        Defaults.drawerItemText[0],
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: indexclicked == 0
                              ? Defaults.drawerItemSelectedColor
                              : Defaults.drawerItemColor,
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: ListTile(
                      onTap: () {
                        setState(() {
                          indexclicked = 1;
                        });
                        Navigator.pop(context);
                      },
                      selected: indexclicked == 1,
                      selectedTileColor: Defaults.drawerSelectedTileColor,
                      leading: Icon(
                        Defaults.drawerItemIcon[1],
                        size: 35,
                        color: indexclicked == 1
                            ? Defaults.drawerItemSelectedColor
                            : Defaults.drawerItemColor,
                      ),
                      title: Text(
                        Defaults.drawerItemText[1],
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: indexclicked == 1
                              ? Defaults.drawerItemSelectedColor
                              : Defaults.drawerItemColor,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: ListTile(
                      onTap: () {
                        setState(() {
                          indexclicked = 2;
                        });
                        Navigator.pop(context);
                      },
                      selected: indexclicked == 2,
                      selectedTileColor: Defaults.drawerSelectedTileColor,
                      leading: Icon(
                        Defaults.drawerItemIcon[2],
                        size: 35,
                        color: indexclicked == 2
                            ? Defaults.drawerItemSelectedColor
                            : Defaults.drawerItemColor,
                      ),
                      title: Text(
                        Defaults.drawerItemText[2],
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: indexclicked == 2
                              ? Defaults.drawerItemSelectedColor
                              : Defaults.drawerItemColor,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: ListTile(
                      onTap: () {
                        setState(() {
                          indexclicked = 3;
                        });
                        Navigator.pop(context);
                      },
                      selected: indexclicked == 3,
                      selectedTileColor: Defaults.drawerSelectedTileColor,
                      leading: Icon(
                        Defaults.drawerItemIcon[3],
                        size: 35,
                        color: indexclicked == 3
                            ? Defaults.drawerItemSelectedColor
                            : Defaults.drawerItemColor,
                      ),
                      title: Text(
                        Defaults.drawerItemText[3],
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: indexclicked == 3
                              ? Defaults.drawerItemSelectedColor
                              : Defaults.drawerItemColor,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: ListTile(
                      onTap: () {
                        setState(() {
                          indexclicked = 4;
                        });
                        Navigator.pop(context);
                      },
                      selected: indexclicked == 4,
                      selectedTileColor: Defaults.drawerSelectedTileColor,
                      leading: Icon(
                        Defaults.drawerItemIcon[4],
                        size: 35,
                        color: indexclicked == 4
                            ? Defaults.drawerItemSelectedColor
                            : Defaults.drawerItemColor,
                      ),
                      title: Text(
                        Defaults.drawerItemText[4],
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: indexclicked == 4
                              ? Defaults.drawerItemSelectedColor
                              : Defaults.drawerItemColor,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: ListTile(
                      onTap: () {
                        setState(() {
                          indexclicked = 5;
                        });
                        Navigator.pop(context);
                      },
                      selected: indexclicked == 5,
                      selectedTileColor: Defaults.drawerSelectedTileColor,
                      leading: Icon(
                        Defaults.drawerItemIcon[5],
                        size: 35,
                        color: indexclicked == 5
                            ? Defaults.drawerItemSelectedColor
                            : Defaults.drawerItemColor,
                      ),
                      title: Text(
                        Defaults.drawerItemText[5],
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: indexclicked == 5
                              ? Defaults.drawerItemSelectedColor
                              : Defaults.drawerItemColor,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                   const Divider(),
                  const SizedBox(height: 10),
                  Center(
                    child: Text(
                      'Hotmail',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                          fontStyle: FontStyle.italic,
                          color: Defaults.drawerItemSelectedColor),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Center(
                    child: Text(
                      'Version 1.2.3',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          fontStyle: FontStyle.italic,
                          color: Defaults.drawerItemColor),
                    ),
                  ),
                   const SizedBox(height: 5),
                     const Divider(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}















// class AppDrawertile extends StatelessWidget {
//   const AppDrawertile({
//     super.key,
//     required this.index,
//     required this.onTap
//   });

//   final int index;
//   final Function onTap;
//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       onTap: onTap(),
//       leading: Icon(
//         Defaults.drawerItemIcon[index],
//         size: 35,
//         color: indexclicked == index
//             ? Defaults.drawerItemSelectedColor
//             : Defaults.drawerItemColor,
//       ),
//       title: Text(Defaults.drawerItemText[index],
//       style: TextStyle(fontSize: 20,
//       fontWeight: FontWeight.w500,
//         color: indexclicked == index
//             ? Defaults.drawerItemSelectedColor
//             : Defaults.drawerItemColor,
//       ),
//       ),
//     );
//   }
// }
