import 'package:flutter/material.dart';
import 'package:home_lh/colors/my_color.dart';

class HomeMission extends StatelessWidget {
  const HomeMission({super.key});

  final List<Map<String, String>> treesData = const [
    {"label": 'Donasi Pohon', "value": '30M'},
    {"label": 'Pohon Tertanam', "value": '2M'},
    {"label": 'Sahabat Alam', "value": '40K'},
    {"label": 'Kampanye Alam', "value": '400K'},
  ];

  void kerjaSama() {
    print('jalan');
  }

  void createCamp() {
    print('What?');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF121212),
                      height: 1.5),
                  text:
                      'Menanam pohon sejumlah penduduk Indonesia adalah mimpi kami',
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: treesData.map((item) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          item['value'] ?? '',
                          style: const TextStyle(
                              fontSize: 16,
                              color: Color(0xFF121212),
                              height: 1.5,
                              fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            style: const TextStyle(
                                fontSize: 10,
                                letterSpacing: 0.3,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF121212),
                                height: 1.5),
                            text: item['label'] ?? '',
                          ),
                        ),
                      ],
                    );
                  }).toList()),
              const SizedBox(
                height: 18,
              ),
              Row(
                children: [
                  FilledButton(
                      onPressed: kerjaSama,
                      style: FilledButton.styleFrom(
                          backgroundColor: MyColor.greenLH,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4))),
                      child: const Text(
                        'Jalin Kerjasama',
                        textAlign: TextAlign
                            .center, // Ternyata widget text juga punya textAlign
                        style: TextStyle(
                            fontSize: 14,
                            letterSpacing: 0.3,
                            height: 18 / 14,
                            fontWeight: FontWeight.w600),
                      )),
                  const SizedBox(
                    width: 12,
                  ),
                  OutlinedButton(
                    onPressed: createCamp,
                    style: OutlinedButton.styleFrom(
                        foregroundColor: MyColor.greenLH,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4)),
                        side: const BorderSide(color: MyColor.greenLH)),
                    child: const Text(
                      'Buat Kampanye',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 14,
                          letterSpacing: 0.3,
                          height: 18 / 14,
                          fontWeight: FontWeight.w600),
                    ),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
