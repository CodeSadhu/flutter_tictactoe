import 'package:flutter/material.dart';
import 'package:tictactoe/screens/create_room.dart';
import 'package:tictactoe/screens/join_room.dart';
import 'package:tictactoe/screens/main_menu.dart';
import 'package:tictactoe/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: bgColor,
      ),
      routes: {
        MainMenu.routeName: (context) => const MainMenu(),
        CreateRoom.routeName: (context) => const CreateRoom(),
        JoinRoom.routeName: (context) => const JoinRoom(),
      },
      initialRoute: MainMenu.routeName,
      home: const MainMenu(),
    );
  }
}
