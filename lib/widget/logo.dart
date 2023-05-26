import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
          'Ahmed & Abdallah',
          style: TextStyle(
            color: Color.fromARGB(255, 190, 39, 196),
            fontWeight: FontWeight.bold,
            fontSize: 40,
          )
      ),
    );
  }
}