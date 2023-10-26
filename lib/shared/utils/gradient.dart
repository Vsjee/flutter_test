import 'package:flutter/material.dart';

LinearGradient getGradient(Color color) => LinearGradient(
      colors: [
        color.withOpacity(0.5),
        color.withOpacity(0.1),
      ],
      stops: const [0.0, 0.7],
    );
