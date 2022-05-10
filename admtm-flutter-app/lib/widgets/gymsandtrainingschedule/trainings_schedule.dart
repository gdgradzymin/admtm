import 'package:admtm_app/models/gymsandtrainingschedule.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class TrainingSchedule extends StatelessWidget {
  final List<TypeTrainings> contentTrainings;

  const TrainingSchedule({
    Key? key,
    required this.contentTrainings,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size _deviceSize = MediaQuery.of(context).size;
    List<String> dataToColumnWithDays = ['day'];

    contentTrainings.first.listTrainings?.forEach((element) {
      dataToColumnWithDays.add(element.day!);
    });

    return Padding(
      padding: const EdgeInsets.only(left: 25.0, bottom: 25),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: _deviceSize.height * 0.025,
          ),
          Text(
            'trainings_schedule'.tr(),
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
          SizedBox(
            height: _deviceSize.height * 0.025,
          ),
          Row(
            children: [
              Column(
                children: dataToColumnWithDays
                    .map((e) => Container(
                          alignment: Alignment.center,
                          height: 76,
                          width: 75,
                          child: Text(
                            e.tr(),
                            style: const TextStyle(fontSize: 13),
                          ),
                        ))
                    .toList(),
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    height: 532,
                    child: Row(
                      // scrollDirection: Axis.horizontal,
                      children: contentTrainings
                          .map(
                            (e) => Container(
                              margin: const EdgeInsets.only(right: 1),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    height: 75,
                                    width: 100,
                                    alignment: Alignment.center,
                                    child: Text(
                                      e.type!,
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  for (Day day in e.listTrainings!)
                                    Container(
                                      margin: const EdgeInsets.only(bottom: 1),
                                      height: 75,
                                      width: 100,
                                      alignment: Alignment.center,
                                      color: day.color ?? const Color.fromRGBO(192, 192, 192, 1),
                                      child: Text(
                                        day.time!,
                                        textAlign: TextAlign.center,
                                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                              fontWeight: FontWeight.normal,
                                              fontSize: _deviceSize.height * 0.02,
                                            ),
                                      ),
                                    ),
                                ],
                              ),
                            ),
                          )
                          .toList(),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
