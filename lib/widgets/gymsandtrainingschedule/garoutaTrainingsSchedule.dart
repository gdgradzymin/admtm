import 'package:admtm_app/models/gymsandtrainingschedule.dart';
import 'package:admtm_app/widgets/gymsandtrainingschedule/trainings_schedule.dart';
import 'package:flutter/material.dart';

class GaroutaTrainingSchedule extends StatelessWidget {
  final Size? deviceSize;

  GaroutaTrainingSchedule({this.deviceSize});

  final List<TypeTrainings> _contentTrainings = [
    TypeTrainings(
      type: 'Muay Thai',
      listTrainings: [
        Day(
          day: 'monday',
          time: '-',
          color: const Color.fromRGBO(69, 90, 100, 1),
        ),
        Day(
          day: 'tuesday',
          time: '-',
          color: const Color.fromRGBO(69, 90, 100, 1),
        ),
        Day(
          day: 'wednesday',
          time: '-',
          color: const Color.fromRGBO(69, 90, 100, 1),
        ),
        Day(
          day: 'thursday',
          time: '-',
          color: const Color.fromRGBO(69, 90, 100, 1),
        ),
        Day(
          day: 'friday',
          time: '-',
          color: const Color.fromRGBO(69, 90, 100, 1),
        ),
        Day(
          day: 'saturday',
          time: '10:00 - 12:00',
          color: const Color.fromRGBO(69, 90, 100, 1),
        ),
      ],
    ),
    TypeTrainings(
      type: 'Muay Thai Kids',
      listTrainings: [
        Day(
          day: 'monday',
          time: '18:30 - 19:30',
          color: const Color.fromRGBO(120, 144, 156, 1),
        ),
        Day(
          day: 'tuesday',
          time: '-',
          color: const Color.fromRGBO(120, 144, 156, 1),
        ),
        Day(
          day: 'wednesday',
          time: '18:30 - 19:30',
          color: const Color.fromRGBO(120, 144, 156, 1),
        ),
        Day(
          day: 'thursday',
          time: '-',
          color: const Color.fromRGBO(120, 144, 156, 1),
        ),
        Day(
          day: 'friday',
          time: '-',
          color: const Color.fromRGBO(120, 144, 156, 1),
        ),
        Day(
          day: 'saturday',
          time: '-',
          color: const Color.fromRGBO(120, 144, 156, 1),
        ),
      ],
    ),
    TypeTrainings(
      type: 'Muay Thai Beginners',
      listTrainings: [
        Day(
          day: 'monday',
          time: '19:30 - 20:30',
          color: const Color.fromRGBO(84, 110, 122, 1),
        ),
        Day(
          day: 'tuesday',
          time: '-',
          color: const Color.fromRGBO(84, 110, 122, 1),
        ),
        Day(
          day: 'wednesday',
          time: '19:30 - 20:30',
          color: const Color.fromRGBO(84, 110, 122, 1),
        ),
        Day(
          day: 'thursday',
          time: '-',
          color: const Color.fromRGBO(84, 110, 122, 1),
        ),
        Day(
          day: 'friday',
          time: '-',
          color: const Color.fromRGBO(84, 110, 122, 1),
        ),
        Day(
          day: 'saturday',
          time: '-',
          color: const Color.fromRGBO(84, 110, 122, 1),
        ),
      ],
    ),
    TypeTrainings(
      type: 'Muay Thai Advanced',
      listTrainings: [
        Day(
          day: 'monday',
          time: '20:30 - 22:00',
          color: const Color.fromRGBO(69, 90, 100, 1),
        ),
        Day(
          day: 'tuesday',
          time: '-',
          color: const Color.fromRGBO(69, 90, 100, 1),
        ),
        Day(
          day: 'wednesday',
          time: '20:30 - 22:00',
          color: const Color.fromRGBO(69, 90, 100, 1),
        ),
        Day(
          day: 'thursday',
          time: '-',
          color: const Color.fromRGBO(69, 90, 100, 1),
        ),
        Day(
          day: 'friday',
          time: '-',
          color: const Color.fromRGBO(69, 90, 100, 1),
        ),
        Day(
          day: 'saturday',
          time: '-',
          color: const Color.fromRGBO(69, 90, 100, 1),
        ),
      ],
    ),
    TypeTrainings(
      type: 'Dynamic Fight Training',
      listTrainings: [
        Day(
          day: 'monday',
          time: '-',
          color: const Color.fromRGBO(198, 40, 40, 1),
        ),
        Day(
          day: 'tuesday',
          time: '-',
          color: const Color.fromRGBO(198, 40, 40, 1),
        ),
        Day(
          day: 'wednesday',
          time: '-',
          color: const Color.fromRGBO(198, 40, 40, 1),
        ),
        Day(
          day: 'thursday',
          time: '-',
          color: const Color.fromRGBO(198, 40, 40, 1),
        ),
        Day(
          day: 'friday',
          time: '19:30 - 20:30',
          color: const Color.fromRGBO(198, 40, 40, 1),
        ),
        Day(
          day: 'saturday',
          time: '-',
          color: const Color.fromRGBO(198, 40, 40, 1),
        ),
      ],
    ),
    TypeTrainings(
      type: 'Fitness',
      listTrainings: [
        Day(
          day: 'monday',
          time: '-',
          color: const Color.fromRGBO(0, 150, 136, 1),
        ),
        Day(
          day: 'tuesday',
          time: '-',
          color: const Color.fromRGBO(0, 150, 136, 1),
        ),
        Day(
          day: 'wednesday',
          time: '-',
          color: const Color.fromRGBO(0, 150, 136, 1),
        ),
        Day(
          day: 'thursday',
          time: '-',
          color: const Color.fromRGBO(0, 150, 136, 1),
        ),
        Day(
          day: 'friday',
          time: '-',
          color: const Color.fromRGBO(0, 150, 136, 1),
        ),
        Day(
          day: 'saturday',
          time: '-',
          color: const Color.fromRGBO(0, 150, 136, 1),
        ),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return TrainingSchedule(contentTrainings: _contentTrainings);
  }
}
