import 'package:flutter/material.dart';

class TypeTrainings {
  final String? type;
  final List<Day>? listTrainings;

  TypeTrainings({
    this.type,
    this.listTrainings,
  });
}

class Day {
  final String? day;
  final String? time;
  final Color? color;

  Day({
    this.day,
    this.time,
    this.color,
  });
}
