import 'package:flutter/material.dart';
import 'package:tictactoe/widgets/custom_button.dart';
import 'package:tictactoe/widgets/glowing_text.dart';
import 'package:tictactoe/widgets/glowing_textfield.dart';

import '../responsive/responsive.dart';

class CreateRoom extends StatefulWidget {
  static String routeName = '/create-room';
  const CreateRoom({Key? key}) : super(key: key);

  @override
  State<CreateRoom> createState() => _CreateRoomState();
}

class _CreateRoomState extends State<CreateRoom> {
  final _nameController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _nameController.dispose();
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
                text: 'Create Room',
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
                height: size.height * 0.04,
              ),
              CustomButton(onTap: () {}, text: 'Create')
            ],
          ),
        ),
      ),
    );
  }
}
