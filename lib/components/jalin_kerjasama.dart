import 'package:flutter/material.dart';

class JalinKerjasama extends StatelessWidget {
  const JalinKerjasama({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
      child: Column(
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Image.asset('assets/icon/CSR-kerjaSama.png'),
                      const SizedBox(
                        height: 8,
                      ),
                      const Text('Corporatree')
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset('assets/icon/Collaboratree.png'),
                      const SizedBox(
                        height: 8,
                      ),
                      const Text('Collaboratree')
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 18,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Image.asset('assets/icon/Imbangi.png'),
                      const SizedBox(
                        height: 8,
                      ),
                      const Text('Carbon Offset')
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset('assets/icon/lokasi.png'),
                      const SizedBox(
                        height: 8,
                      ),
                      const Text('Lokasi Penghijauan')
                    ],
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
