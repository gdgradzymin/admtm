import 'package:admtm_app/models/gymsandtrainingschedule.dart';
import 'package:admtm_app/widgets/gymsandtrainingschedule/trainings_schedule.dart';
import 'package:flutter/material.dart';

class CamaraTrainingSchedule extends StatelessWidget {
  final Size? deviceSize;

  CamaraTrainingSchedule({this.deviceSize});

  final List<TypeTrainings> _contentOneTrainings = [
    TypeTrainings(
      type: 'Muay Thai',
      listTrainings: [
        Day(
          day: 'monday',
          time: '10:00 - 12:00\n14:00 - 17:00',
          color: const Color.fromRGBO(69, 90, 100, 1),
        ),
        Day(
          day: 'tuesday',
          time: '-',
          color: const Color.fromRGBO(69, 90, 100, 1),
        ),
        Day(
          day: 'wednesday',
          time: '10:00 - 12:00\n14:00 - 17:00',
          color: const Color.fromRGBO(69, 90, 100, 1),
        ),
        Day(
          day: 'thursday',
          time: '-',
          color: const Color.fromRGBO(69, 90, 100, 1),
        ),
        Day(
          day: 'friday',
          time: '10:00 - 12:00\n14:00 - 17:00',
          color: const Color.fromRGBO(69, 90, 100, 1),
        ),
        Day(
          day: 'saturday',
          time: '18:00 - 20:00',
          color: const Color.fromRGBO(69, 90, 100, 1),
        ),
      ],
    ),
    TypeTrainings(
      type: 'Muay Thai Kids',
      listTrainings: [
        Day(
          day: 'monday',
          time: '-',
          color: const Color.fromRGBO(120, 144, 156, 1),
        ),
        Day(
          day: 'tuesday',
          time: '18:00 - 19:30',
          color: const Color.fromRGBO(120, 144, 156, 1),
        ),
        Day(
          day: 'wednesday',
          time: '-',
          color: const Color.fromRGBO(120, 144, 156, 1),
        ),
        Day(
          day: 'thursday',
          time: '18:00 - 19:30',
          color: const Color.fromRGBO(120, 144, 156, 1),
        ),
        Day(
          day: 'friday',
          time: '18:00 - 19:30',
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
          time: '-',
          color: const Color.fromRGBO(84, 110, 122, 1),
        ),
        Day(
          day: 'tuesday',
          time: '19:30 - 20:30',
          color: const Color.fromRGBO(84, 110, 122, 1),
        ),
        Day(
          day: 'wednesday',
          time: '-',
          color: const Color.fromRGBO(84, 110, 122, 1),
        ),
        Day(
          day: 'thursday',
          time: '19:30 - 20:30',
          color: const Color.fromRGBO(84, 110, 122, 1),
        ),
        Day(
          day: 'friday',
          time: '19:30 - 20:30',
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
          time: '-',
          color: const Color.fromRGBO(69, 90, 100, 1),
        ),
        Day(
          day: 'tuesday',
          time: '20:30 - 22:00',
          color: const Color.fromRGBO(69, 90, 100, 1),
        ),
        Day(
          day: 'wednesday',
          time: '-',
          color: const Color.fromRGBO(69, 90, 100, 1),
        ),
        Day(
          day: 'thursday',
          time: '20:30 - 22:00',
          color: const Color.fromRGBO(69, 90, 100, 1),
        ),
        Day(
          day: 'friday',
          time: '20:30 - 22:00',
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
          time: '19:30 - 20:30',
          color: const Color.fromRGBO(198, 40, 40, 1),
        ),
        Day(
          day: 'tuesday',
          time: '-',
          color: const Color.fromRGBO(198, 40, 40, 1),
        ),
        Day(
          day: 'wednesday',
          time: '19:30 - 20:30',
          color: const Color.fromRGBO(198, 40, 40, 1),
        ),
        Day(
          day: 'thursday',
          time: '-',
          color: const Color.fromRGBO(198, 40, 40, 1),
        ),
        Day(
          day: 'friday',
          time: '-',
          color: const Color.fromRGBO(198, 40, 40, 1),
        ),
        Day(
          day: 'saturday',
          time: '19:30 - 20:30',
          color: const Color.fromRGBO(198, 40, 40, 1),
        ),
      ],
    ),
    TypeTrainings(
      type: 'Fitness',
      listTrainings: [
        Day(
          day: 'monday',
          time: '18:30 - 20:00',
          color: const Color.fromRGBO(0, 150, 136, 1),
        ),
        Day(
          day: 'tuesday',
          time: '-',
          color: const Color.fromRGBO(0, 150, 136, 1),
        ),
        Day(
          day: 'wednesday',
          time: '18:30 - 20:00',
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
    return TrainingSchedule(
      contentTrainings: _contentOneTrainings,
    );
  }
}
