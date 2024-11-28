import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustemSearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Search doctor, drugs, articles...',
        prefixIcon: const Icon(CupertinoIcons.search),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide.none,
        ),
        filled: true,
        fillColor: Colors.grey[200],
      ),
    );
  }
}
