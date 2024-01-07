import 'package:flutter/material.dart';

class Defaults {
  static  Color drawerItemColor = Colors.blueGrey;
  static  Color drawerItemSelectedColor = const Color.fromARGB(255, 18, 93, 169);
  static  Color drawerSelectedTileColor = Color.fromARGB(200, 140, 198, 246);

  static final drawerItemText = [
    'Входящие',
    'Избранное',
    'Отправленные',
    'Черновики',
    'Корзина',
    'Спам',
  ];

  static final drawerItemIcon = [
    Icons.inbox,
    Icons.star,
    Icons.send,
    Icons.mail,
    Icons.delete,
    Icons.warning_rounded,
  ];
}
