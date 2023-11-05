import 'package:flutter/material.dart';
import 'package:sea_aquarium_flut/detail/item_detail.dart';

class HomeSlideItem extends StatelessWidget {
  const HomeSlideItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      height: 150,
      child: GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const ItemDetail()));
        },
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(
                  8,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: Colors.white,
              ),
              padding: const EdgeInsets.all(
                4.0,
              ),
              margin: const EdgeInsets.all(8.0),
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.watch_later_outlined,
                    size: 13,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    "2:30 PM",
                    style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            const Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: EdgeInsets.all(12.0),
                child: Text(
                  "Dive Feeding @ ShipWreck",
                  style: TextStyle(
                      fontWeight: FontWeight.normal, color: Colors.white60),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
