import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ScreensBottom extends StatelessWidget {
  final Size? deviceSize;
  const ScreensBottom({this.deviceSize});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      child: Theme(
        data: ThemeData(
          iconTheme: const IconThemeData(
            color: Color.fromRGBO(255, 255, 255, 0.5),
          ),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: const Icon(FontAwesomeIcons.facebookF),
                  onPressed: () => launch('https://pl-pl.facebook.com/muaythaimadeira/'),
                ),
                IconButton(
                  icon: const Icon(FontAwesomeIcons.youtube),
                  onPressed: () => launch('https://www.youtube.com/channel/UCF5rid4nSacFHpldejYfY-w'),
                ),
                IconButton(
                  icon: const Icon(FontAwesomeIcons.envelope),
                  onPressed: () => launch('mailto:admtm2002@hotmail.com'),
                ),
              ],
            ),
            MaterialButton(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(25),
                ),
              ),
              onPressed: () => launch('tel:+351 966 373 544'),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    FontAwesomeIcons.phoneAlt,
                    color: Color.fromRGBO(255, 255, 255, 0.5),
                  ),
                  SizedBox(
                    width: deviceSize!.width * 0.05,
                  ),
                  const Text(
                    '(+351) 966 373 544',
                    style: TextStyle(color: Color.fromRGBO(255, 255, 255, 0.5)),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
