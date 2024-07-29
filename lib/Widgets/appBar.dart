import 'package:flutter/material.dart';
import 'package:todo_app/constants/colors.dart';

class appBar extends StatelessWidget {
  const appBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 20,
      shadowColor: Tcolors.black.withOpacity(0.8),
      backgroundColor: Tcolors.primary.withOpacity(0.5),
      leading: IconButton(
        icon: Icon(Icons.menu),
        onPressed: () {},
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(400),
            child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    color: Tcolors.accent.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(400)),
                child: Image(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/profile.jpg"),
                )),
          ),
        )
      ],
    );
  }
}
