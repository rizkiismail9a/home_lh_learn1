import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({super.key});

  static final List<String> myBanners = [
    "assets/img/csr.png",
    "assets/img/dampak.png",
    "assets/img/imbangi.png",
    "assets/img/sedekah.png",
    "assets/img/umkm.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 0),
            child: SizedBox(
              height: 130,
              child: Swiper(
                itemCount: myBanners.length,
                scrollDirection: Axis.horizontal,
                duration: 5000,
                autoplayDelay: 15000,
                autoplay: true,
                scale: 0.5,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      const SizedBox(width: 16),
                      Expanded(
                          child: Image.asset(
                        myBanners[index],
                      )),
                      const SizedBox(width: 16),
                    ],
                  );
                },
              ),
            )));
  }
}
