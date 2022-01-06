import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(FontAwesomeIcons.youtube),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(FontAwesomeIcons.envelope),
                  onPressed: () {},
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(FontAwesomeIcons.phoneAlt),
                SizedBox(
                  width: deviceSize!.width * 0.05,
                ),
                const Text(
                  '(+351) 966373544',
                  style: TextStyle(color: Color.fromRGBO(255, 255, 255, 0.5)),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
