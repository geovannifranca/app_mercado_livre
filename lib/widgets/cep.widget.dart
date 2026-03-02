import 'package:flutter/material.dart';

class Cep extends StatelessWidget {
  const Cep({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Spacer(flex: 2),
          Flexible(flex: 14, child: Icon(Icons.pin_drop_outlined, size: 20.0)),
          const SizedBox(width: 8.0),
          Text(
            'Informe o seu Cep',
            style: TextStyle(
              fontSize: 16.8,
              fontWeight: FontWeight.w600,
              letterSpacing: -0.3,
            ),
          ),
          const SizedBox(width: 8.0),
          const Icon(Icons.arrow_forward_ios_rounded, size: 20.0),
        ],
      ),
    );
  }
}
