import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class HomeContent extends StatelessWidget {
  final String titleTranslate;
  final String contentTranslate;
  final String buttonTranslate;
  final String imageAsset;
  final Size deviceSize;
  final String routeName;

  const HomeContent({
    required this.titleTranslate,
    required this.contentTranslate,
    required this.buttonTranslate,
    required this.imageAsset,
    required this.deviceSize,
    required this.routeName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Image.asset(imageAsset),
          SizedBox(
            height: deviceSize.height * 0.05,
          ),
          Text(
            titleTranslate,
            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
          ).tr(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              contentTranslate,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    fontSize: 15,
                  ),
            ).tr(),
          ),
          Card(
            color: Colors.transparent,
            elevation: 15,
            child: TextButton(
              child: Text(
                buttonTranslate.tr().toUpperCase(),
                style: Theme.of(context).textTheme.bodyText1,
              ),
              onPressed: () => () => Navigator.pushNamedAndRemoveUntil(
                    context,
                    routeName,
                    ModalRoute.withName('/'),
                  ),
            ),
            shape: RoundedRectangleBorder(
              side: const BorderSide(
                color: Colors.white,
                width: 2,
                style: BorderStyle.solid,
              ),
              borderRadius: BorderRadius.circular(0),
            ),
          ),
          SizedBox(
            height: deviceSize.height * 0.025,
          )
        ],
      ),
    );
  }
}
