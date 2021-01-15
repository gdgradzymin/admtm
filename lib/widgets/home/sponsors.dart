import 'package:admtm_app/screens/sponsors.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class HomeSponsors extends StatelessWidget {
  final String value1;
  final String value2;
  final String value3;
  final String value4;
  final Size deviceSize;

  const HomeSponsors(
      {this.value1, this.value2, this.value3, this.value4, this.deviceSize});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            value1,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyText2.copyWith(
                  color: const Color.fromRGBO(255, 81, 81, 1),
                  wordSpacing: 1.5,
                  fontSize: 16,
                ),
          ).tr(),
          Text(
            value2,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyText2.copyWith(
                  color: const Color.fromRGBO(255, 81, 81, 1),
                  wordSpacing: 1.5,
                  fontSize: 16,
                ),
          ).tr(),
          SizedBox(
            height: deviceSize.height * 0.05,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                value3,
                style: Theme.of(context).textTheme.bodyText2.copyWith(
                      color: const Color.fromRGBO(255, 81, 81, 1),
                      fontSize: 14,
                    ),
              ).tr(),
              InkWell(
                onTap: () => Navigator.of(context)
                    .pushReplacementNamed(Sponsors.routeName),
                child: Text(
                  value4,
                  style: Theme.of(context).textTheme.bodyText2.copyWith(
                        color: const Color.fromRGBO(234, 115, 115, 1),
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                ).tr(),
              ),
            ],
          )
        ],
      ),
    );
  }
}
