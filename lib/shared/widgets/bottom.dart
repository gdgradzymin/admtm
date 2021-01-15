import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ScreensBottom extends StatelessWidget {
  final Size deviceSize;

  ScreensBottom({this.deviceSize});

  final Color _contentColor = const Color.fromRGBO(255, 255, 255, 0.5);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      child: Theme(
        data: ThemeData(
          iconTheme: IconThemeData(
            color: _contentColor,
          ),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: const Icon(FontAwesomeIcons.facebookF),
                  onPressed: () async {
                    const url = 'https://pl-pl.facebook.com/muaythaimadeira/';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                ),
                IconButton(
                  icon: const Icon(FontAwesomeIcons.youtube),
                  onPressed: () async {
                    const url = 'https://www.youtube.com/user/2002admtm/videos';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                ),
                IconButton(
                  icon: const Icon(FontAwesomeIcons.envelope),
                  onPressed: () async {
                    const url = 'mailto:admtm2002@hotmail.com';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                ),
              ],
            ),
            FlatButton(
              onPressed: () async {
                const url = 'tel:351966373544';
                if (await canLaunch(url)) {
                  await launch(url);
                } else {
                  throw 'Could not launch $url';
                }
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    FontAwesomeIcons.phoneAlt,
                    color: _contentColor,
                  ),
                  SizedBox(
                    width: deviceSize.width * 0.05,
                  ),
                  Text(
                    '(+351) 966373544',
                    style: TextStyle(color: _contentColor),
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
