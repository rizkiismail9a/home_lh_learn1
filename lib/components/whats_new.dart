import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:home_lh/components/whats_new/whats_new_card.dart';

import '../colors/my_color.dart';

class WhatsNew extends StatefulWidget {
  const WhatsNew({super.key});

  @override
  State<WhatsNew> createState() => _WhatsNewState();
}

class _WhatsNewState extends State<WhatsNew> {
  final List<Map<String, String>> latestActivity = [
    {
      "user": 'Budi',
      "activity": "donasi pohon di kampanye",
      "campaign": "Cianjur Bersemi: Rawat Cianjur Agar Tetap Hijau dan Asri",
      "date": "12/03"
    },
    {
      "user": 'Ahmad',
      "activity": "donasi pohon di kampanye",
      "campaign": "Jakarta Hijau",
      "date": "12/08"
    },
    {
      "user": 'Memet',
      "activity": "membuat kampanye",
      "campaign": "Jakarta Hijau",
      "date": "01/08"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          child: Column(
            children: [
              const Row(
                children: [
                  Text(
                    "Apa yang baru?",
                    style: TextStyle(
                        fontSize: 16,
                        height: 24 / 16,
                        letterSpacing: 0.3,
                        color: Color(0xFF121212),
                        fontWeight: FontWeight.w600),
                  ),
                  Expanded(child: SizedBox()),
                  Text(
                    "Lihat Semua",
                    style: TextStyle(
                        fontSize: 12,
                        height: 18 / 12,
                        letterSpacing: 0.3,
                        color: MyColor.greenLH,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color(0xFFd9d9d9),
                ),
                height: 100,
                padding: const EdgeInsets.all(8),
                // child: const WhatsNewCard(),
                child: Swiper(
                  itemCount: latestActivity.length,
                  scrollDirection: Axis.vertical,
                  // viewportFraction: 0.6,
                  scale: 0.5,
                  // pagination: const SwiperPagination(
                  //   alignment: Alignment.centerLeft,
                  // ),
                  // control: const SwiperControl(),
                  autoplay: true,
                  duration: 2000,
                  itemBuilder: (context, index) {
                    final activity = latestActivity[index];

                    return Padding(
                      padding: const EdgeInsets.only(left: 4),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          WhatsNewCard(
                            name: activity['user'] ?? '',
                            campaign: activity['campaign'] ?? '',
                            date: activity['date'] ?? '',
                            activity: activity['activity'] ?? '',
                          )
                        ],
                      ),
                    );
                  },
                ),
                // Pasang swiper di sini
              ),
            ],
          )),
    );
  }
}
