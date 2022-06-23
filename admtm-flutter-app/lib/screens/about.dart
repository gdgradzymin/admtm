import 'package:admtm_app/models/author.dart';
import 'package:admtm_app/shared/widgets/appBar.dart';
import 'package:admtm_app/shared/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:easy_localization/src/public_ext.dart';

class About extends StatelessWidget {
  About({Key? key, this.title}) : super(key: key);

  static const routeName = '/About';
  final String? title;

  final List<Author> _dataAuthors = [
    Author(
      name: 'Daniel Michalak',
      image: 'danielmichalak',
      twitterUrl: 'https://twitter.com/MichalakDaniel2',
    ),
    Author(
      name: 'Sebastian Denis',
      image: 'sebastiandenis',
      twitterUrl: 'https://twitter.com/SebekD',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final _deviceSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      drawer: ScreensDrawer(
        deviceSize: _deviceSize,
      ),
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            ScreensAppBar(
              appBarValue1: 'about_appbar_value1',
              deviceSize: _deviceSize,
              maxHeight: 150.0,
            )
          ];
        },
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Image.asset(
                    'images/admtm_logo.jpg',
                    height: 100,
                  ),
                ),
                Text(
                  'about_build_app'.tr(),
                  style: Theme.of(context).textTheme.bodyText2!.copyWith(
                        fontSize: 15,
                      ),
                ),
                Divider(
                  color: Theme.of(context).dividerTheme.color,
                  height: 35,
                ),
                Container(
                  width: double.infinity,
                  child: Text(
                    'about_authors'.tr() + ':',
                    textAlign: TextAlign.left,
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          color: const Color.fromRGBO(234, 115, 115, 1),
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                        ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                Column(
                  children: _dataAuthors
                      .map(
                        (author) => Column(
                          children: [
                            ListTile(
                              onTap: () => launch(author.twitterUrl),
                              leading: ClipRRect(
                                borderRadius: BorderRadius.circular(50.0),
                                child: Image.asset(
                                  'images/authors/${author.image}.jpg',
                                  height: 50,
                                ),
                              ),
                              title: Text(
                                author.name,
                                style: const TextStyle(color: Colors.blue),
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.02,
                            ),
                          ],
                        ),
                      )
                      .toList(),
                ),
                Divider(
                  color: Theme.of(context).dividerTheme.color,
                  height: 35,
                ),
                ListTile(
                  leading: Image.asset(
                    'images/github.png',
                    height: 50,
                  ),
                  title: InkWell(
                    onTap: () => launch('https://github.com/gdgradzymin/admtm'),
                    child: const Text(
                      'ADMTM',
                      style: TextStyle(color: Colors.blue, fontSize: 12),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12.0),
                  child: Text(
                    'about_version'.tr() + ': 1.0.0',
                    style: Theme.of(context).textTheme.headline6?.copyWith(color: Theme.of(context).colorScheme.secondary, fontSize: 8),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
