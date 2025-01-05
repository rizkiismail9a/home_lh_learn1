import 'package:flutter/material.dart';

class MyNavbar extends StatelessWidget implements PreferredSizeWidget {
  const MyNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: 145, //Panjang leading, bukan panjang appbar
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.white,
      centerTitle: false,
      leading: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        child: Image.asset(
          width: 145,
          height: 26,
          // fit: BoxFit.fitWidth,
          'assets/img/logo-lh-long.png',
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          child: Row(
            children: [
              Image.asset(
                fit: BoxFit.fitWidth,
                'assets/icon/kantong-pohon.png',
              ),
              const SizedBox(width: 18),
              Image.asset(
                fit: BoxFit.fitWidth,
                'assets/icon/notification-bell.png',
              ),
            ],
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(52);
}
