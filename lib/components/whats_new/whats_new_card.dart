import 'package:flutter/material.dart';

class WhatsNewCard extends StatelessWidget {
  final String name;
  final String campaign;
  final String date;
  final String activity;

  const WhatsNewCard(
      {super.key,
      required this.name,
      required this.campaign,
      required this.date,
      required this.activity});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      height: 70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset('assets/icon/info-blue.png'),
              const SizedBox(width: 4),
              Row(
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.3,
                        height: 15 / 10,
                        color: Color(0xFF121212),
                        fontSize: 10),
                  ),
                  const SizedBox(width: 4),
                  Text(
                    activity,
                    style: const TextStyle(
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.3,
                        height: 15 / 10,
                        color: Color(0xFF4b4b4b),
                        fontSize: 10),
                  ),
                ],
              ),
              Expanded(
                  child: Text(
                date,
                textAlign: TextAlign.right,
                style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0.3,
                    height: 15 / 10,
                    color: Color(0xFF4b4b4b),
                    fontSize: 10),
              ))
            ],
          ),
          Expanded(
              child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(
                width: 290,
                child: Text(
                  campaign,
                  softWrap: true,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: const TextStyle(
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.3,
                      height: 1.5,
                      color: Color(0xFF4b4b4b),
                      fontSize: 10),
                ),
              )
            ],
          ))
        ],
      ),
    );
  }
}
