import 'package:flutter/material.dart';

class Filter extends StatelessWidget {
  const Filter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(68, 0, 0, 0),
            offset: Offset(-1, 3),
            blurRadius: 0,
            spreadRadius: -1,
          ),
        ],
      ),
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('15 Resultados', style: TextStyle(fontSize: 18.0)),
          Row(
            children: [
              Text(
                'Filtrar (2)',
                style: TextStyle(color: Colors.blue, fontSize: 18.0),
              ),
              Icon(
                Icons.keyboard_arrow_down_sharp,
                size: 28,
                color: Colors.blue,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
