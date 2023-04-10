import 'package:flutter/material.dart';

class MiniHeader extends StatelessWidget {
  const MiniHeader({Key? key, required this.header}) : super(key: key);
  final String header;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              header,
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.w800),
            )),
      ),
    );
  }
}
