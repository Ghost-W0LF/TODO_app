import 'package:flutter/material.dart';
import 'package:todo_app/constants/colors.dart';

class searchBar extends StatelessWidget {
  const searchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 1),
      decoration: BoxDecoration(
        color: Tcolors.LightGrey.withOpacity(0.85),
        borderRadius: BorderRadius.circular(20),
        // border: Border.all(color: Tcolors.black)
      ),
      child: const TextField(
        decoration: InputDecoration(
            contentPadding: EdgeInsets.all(0),
            prefixIcon: Icon(
              Icons.search,
              color: Tcolors.darkerGrey,
            ),
            hintText: "Search",
            hintStyle: TextStyle(color: Tcolors.darkerGrey),
            border: InputBorder.none,
            prefixIconConstraints: BoxConstraints(
              minHeight: 20,
              minWidth: 40,
            )),
      ),
    );
  }
}
