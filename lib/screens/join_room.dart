import 'package:flutter/material.dart';
import 'package:tictactoe/responsive/responsive.dart';
import 'package:tictactoe/widgets/custom_button.dart';
import 'package:tictactoe/widgets/glowing_text.dart';
import 'package:tictactoe/widgets/glowing_textfield.dart';

class JoinRoom extends StatefulWidget {
  static String routeName = '/join-room';
  const JoinRoom({Key? key}) : super(key: key);

  @override
  State<JoinRoom> createState() => _JoinRoomState();
}

class _JoinRoomState extends State<JoinRoom> {
  final _nameController = TextEditingController();
  final _gameIdController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _nameController.dispose();
    _gameIdController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Responsive(
        child: Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const GlowingText(
                shadows: [
                  Shadow(
                    blurRadius: 40,
                    color: Colors.blue,
                  ),
                ],
                text: 'Join Room',
                fontSize: 70,
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
              GlowingTextField(
                controller: _nameController,
                hintText: 'Enter your nickname',
              ),
              SizedBox(
                height: size.height * 0.025,
              ),
              GlowingTextField(
                controller: _gameIdController,
                hintText: 'Enter Game ID',
              ),
              SizedBox(
                height: size.height * 0.045,
              ),
              CustomButton(onTap: () {}, text: 'Join')
            ],
          ),
        ),
      ),
    );
  }
}
