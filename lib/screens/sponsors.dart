import 'package:admtm_app/shared/widgets/appBar.dart';
import 'package:admtm_app/shared/widgets/bottom.dart';
import 'package:admtm_app/shared/widgets/drawer.dart';
import 'package:flutter/material.dart';

class Sponsors extends StatelessWidget {
  static const routeName = '/Sponsors';

  final List<ImageWithLink> _imagesSponsors = [
    ImageWithLink(asset: 'aquimadeira.jpg', link: ''),
    ImageWithLink(asset: 'class_house.jpg', link: ''),
    ImageWithLink(asset: 'logo_4litro.png', link: ''),
    ImageWithLink(asset: 'logo_ad_automoveis.jpg', link: ''),
    ImageWithLink(asset: 'logo_alberto_oculista.jpg', link: ''),
    ImageWithLink(asset: 'logo_atms.png', link: ''),
    ImageWithLink(asset: 'logo_auto_piornais.png', link: ''),
    ImageWithLink(asset: 'logo_beach_bar.jpg', link: ''),
    ImageWithLink(asset: 'logo_bordados_pontg.png', link: ''),
    ImageWithLink(asset: 'logo_carbonara.jpg', link: ''),
    ImageWithLink(asset: 'logo_cidade_velha.png', link: ''),
    ImageWithLink(asset: 'logo_cme.png', link: ''),
    ImageWithLink(asset: 'logo_dubai.png', link: ''),
    ImageWithLink(asset: 'logo_eoccu.jpg', link: ''),
    ImageWithLink(asset: 'logo_green_devis_safari.png', link: ''),
    ImageWithLink(asset: 'logo_hotel_eira_do_serrado_ans_spa.png', link: ''),
    ImageWithLink(asset: 'logo_luminoso_rainha.jpg', link: ''),
    ImageWithLink(asset: 'logo_mimos.jpg', link: ''),
    ImageWithLink(asset: 'logo_miro_freitas.jpg', link: ''),
    ImageWithLink(asset: 'logo_muscle_power.png', link: ''),
    ImageWithLink(asset: 'logo_nico_burger.jpg', link: ''),
    ImageWithLink(asset: 'logo_ocean_gardens_hotel.png', link: ''),
    ImageWithLink(asset: 'logo_old_town_bar.jpg', link: ''),
    ImageWithLink(asset: 'logo_pdf-convert.png', link: ''),
    ImageWithLink(asset: 'logo_podio_classico.jpg', link: ''),
    ImageWithLink(asset: 'logo_prova_la_pasta.jpg', link: ''),
    ImageWithLink(asset: 'logo_rui_bombas.jpg', link: ''),
    ImageWithLink(asset: 'logo_snack_bar.jpg', link: ''),
    ImageWithLink(asset: 'logo_super_lobos.jpg', link: ''),
    ImageWithLink(asset: 'logo_tipografia_natividade.jpg', link: ''),
  ];

  @override
  Widget build(BuildContext context) {
    final Size _deviceSize = MediaQuery.of(context).size;

    return Scaffold(
      drawer: ScreensDrawer(
        deviceSize: _deviceSize,
      ),
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            ScreensAppBar(
              appBarValue1: 'sponsors_appbar_value1',
              appBarValue2: 'sponsors_appbar_value2',
              deviceSize: _deviceSize,
            )
          ];
        },
        body: Container(
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.025,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    children: _imagesSponsors
                        .map(
                          (ImageWithLink image) => GestureDetector(
                            onTap: () async {
                              // await launch(image.link);
                            },
                            child:
                                Image.asset('images/sponsors/${image.asset}'),
                          ),
                        )
                        .toList(),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.025,
                ),
                Container(
                  color: Theme.of(context).canvasColor,
                  child: ScreensBottom(
                    deviceSize: _deviceSize,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ImageWithLink {
  final String asset;
  final String link;

  ImageWithLink({
    required this.asset,
    required this.link,
  });
}
