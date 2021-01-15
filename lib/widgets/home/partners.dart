import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePartners extends StatelessWidget {
  final Size deviceSize;

  HomePartners({this.deviceSize});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FlatButton(
            minWidth: 0,
            padding: const EdgeInsets.all(5),
            onPressed: () async {
              const url = 'http://www.cm-funchal.pt/';
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Could not launch $url';
              }
            },
            child: Container(
              width: deviceSize.width * 0.1,
              child: Image.asset(
                'images/cm-funchal.png',
              ),
            ),
          ),
          SizedBox(
            width: deviceSize.width * 0.05,
          ),
          FlatButton(
            minWidth: 0,
            padding: const EdgeInsets.all(5),
            onPressed: () async {
              const url = 'http://www.cm-camaradelobos.pt/';
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Could not launch $url';
              }
            },
            child: Container(
              width: deviceSize.width * 0.1,
              child: Image.asset(
                'images/cm-cdlobos.png',
              ),
            ),
          ),
          SizedBox(
            width: deviceSize.width * 0.05,
          ),
          FlatButton(
            minWidth: 0,
            padding: const EdgeInsets.all(5),
            onPressed: () async {
              const url = 'https://www.facebook.com/COMBATESMADEIRA?fref=ts';
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Could not launch $url';
              }
            },
            child: Container(
              width: deviceSize.width * 0.1,
              child: Image.asset(
                'images/logo_adcmad.png',
              ),
            ),
          ),
          SizedBox(
            width: deviceSize.width * 0.05,
          ),
          FlatButton(
            minWidth: 0,
            padding: const EdgeInsets.all(5),
            onPressed: () async {
              const url = 'http://www.idesporto.pt/';
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Could not launch $url';
              }
            },
            child: Container(
              width: deviceSize.width * 0.1,
              child: Image.asset(
                'images/logo_ipdj.png',
              ),
            ),
          ),
          SizedBox(
            width: deviceSize.width * 0.05,
          ),
          FlatButton(
            minWidth: 0,
            padding: const EdgeInsets.all(5),
            onPressed: () async {
              const url = 'http://www02.madeira-edu.pt/drjd/main.aspx';
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Could not launch $url';
              }
            },
            child: Container(
              width: deviceSize.width * 0.1,
              child: Image.asset(
                'images/logo_sre.jpg',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
