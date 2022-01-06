import 'package:admtm_app/models/gymsandtrainingschedule.dart';
import 'package:flutter/material.dart';

class GaroutaTrainingSchedule extends StatelessWidget {
  final Size? deviceSize;

  GaroutaTrainingSchedule({this.deviceSize});

  final List<DaysTrainings> _contentOneTrainings = [
    DaysTrainings(
      day: 'Monday',
      listTrainings: [
        Training(
          training: 'Muay Thai Kids',
          time: '18:30 - 19:30',
          color: const Color.fromRGBO(120, 144, 156, 1),
        ),
        Training(
          training: 'Muay Thai Beginners',
          time: '19:30 - 20:30',
          color: const Color.fromRGBO(84, 110, 122, 1),
        ),
        Training(
          training: 'Muay Thai Advanced',
          time: '20:30 - 22:00',
          color: const Color.fromRGBO(69, 90, 100, 1),
        ),
      ],
    ),
    DaysTrainings(
      day: 'Tuesday',
      listTrainings: [
        Training(
          training: '',
          time: '',
          color: null,
        ),
        Training(
          training: '',
          time: '',
          color: null,
        ),
        Training(
          training: '',
          time: '',
          color: null,
        ),
      ],
    ),
    DaysTrainings(
      day: 'Wednesday',
      listTrainings: [
        Training(
          training: 'Muay Thai Kids',
          time: '18:30 - 19:30',
          color: const Color.fromRGBO(120, 144, 156, 1),
        ),
        Training(
          training: 'Muay Thai Beginners',
          time: '19:30 - 20:30',
          color: const Color.fromRGBO(84, 110, 122, 1),
        ),
        Training(
          training: 'Muay Thai Advanced',
          time: '20:30 - 22:00',
          color: const Color.fromRGBO(69, 90, 100, 1),
        ),
      ],
    ),
    DaysTrainings(
      day: 'Thursday',
      listTrainings: [
        Training(
          training: '',
          time: '',
          color: null,
        ),
        Training(
          training: '',
          time: '',
          color: null,
        ),
        Training(
          training: '',
          time: '',
          color: null,
        ),
      ],
    ),
    DaysTrainings(
      day: 'Friday',
      listTrainings: [
        Training(
          training: '',
          time: '',
          color: null,
        ),
        Training(
          training: 'Dynamic Fight Training',
          time: '19:30 - 20:30',
          color: const Color.fromRGBO(198, 40, 40, 1),
        ),
        Training(
          training: '',
          time: '',
          color: null,
        ),
      ],
    ),
    DaysTrainings(
      day: 'Saturday',
      listTrainings: [
        Training(
          training: 'Muay Thai',
          time: '10:00 - 12:00',
          color: const Color.fromRGBO(69, 90, 100, 1),
        ),
        Training(
          training: '',
          time: '',
          color: null,
        ),
        Training(
          training: '',
          time: '',
          color: null,
        ),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: deviceSize!.height * 0.025,
        ),
        const Text(
          'TRAININGS SCHEDULE',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        ),
        SizedBox(
          height: deviceSize!.height * 0.025,
        ),
        Container(
          height: 300,
          child: ListView.builder(
            itemCount: _contentOneTrainings.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: index > 0
                    ? const EdgeInsets.only(left: 1.0)
                    : const EdgeInsets.only(left: 0.0),
                child: Column(
                  children: [
                    Text(
                      _contentOneTrainings[index].day!,
                      style: const TextStyle(fontSize: 13),
                    ),
                    SizedBox(
                      height: deviceSize!.height * 0.025,
                    ),
                    Container(
                      width: 150,
                      child: Column(
                        children: _contentOneTrainings[index]
                            .listTrainings!
                            .map((Training training) {
                          return Container(
                            height: 80,
                            width: double.infinity,
                            padding: const EdgeInsets.all(10.0),
                            margin: const EdgeInsets.only(bottom: 1.0),
                            color: training.color ??
                                const Color.fromRGBO(192, 192, 192, 1),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  child: Text(
                                    training.training!,
                                    textAlign: TextAlign.center,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(
                                          fontWeight: FontWeight.normal,
                                          fontSize: deviceSize!.height * 0.02,
                                        ),
                                  ),
                                ),
                                Text(
                                  training.time!,
                                  textAlign: TextAlign.center,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .copyWith(
                                        fontWeight: FontWeight.normal,
                                        fontSize: deviceSize!.height * 0.02,
                                      ),
                                ),
                              ],
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
