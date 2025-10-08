import 'package:flutter/material.dart';

class ColumnWidget extends StatelessWidget {
  const ColumnWidget ({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment:Alignment.center,
      color: Colors.amberAccent,
      width: 400,     
      child: Column (
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text('UNACH'),
          Text('FCA-C1'),
          Text('LIDTS'),
          Text('7 SEMESTRE'),
          Text('ALEJANDRO ROUSSE GORDILLO'),
        ],
      ),
    );
  }
}