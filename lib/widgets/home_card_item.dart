import 'package:flutter/material.dart';

class HomeCardItem extends StatelessWidget {
  const HomeCardItem({
    super.key,
    required this.icon,
    required this.label,
    required this.data,
    required this.redText,
  });

  final String icon;
  final String label;
  final String data;
  final String redText;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(15)),
        child: Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    label.toUpperCase(),
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 11,
                    ),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Image.asset(
                    icon,
                  ),
                ],
              ),
              Text(
                data,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(
                width: 4,
              ),
              Text(
                redText,
                style: const TextStyle(
                  fontSize: 11,
                  color: Colors.red,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
