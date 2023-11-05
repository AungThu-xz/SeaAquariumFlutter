import 'package:flutter/material.dart';

import '../styles/colors.dart';

class ItemDetail extends StatelessWidget {
  const ItemDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SeaAquariumColor.primaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 250,
                    decoration: const BoxDecoration(
                        color: SeaAquariumColor.grey,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            topRight: Radius.circular(20.0))),
                  ),
                  IconButton(
                    icon: Image.asset(
                      'assets/icons/close_ic.png',
                      height: 22,
                    ),
                    alignment: Alignment.topLeft,
                    tooltip: 'close',
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "ZONE 1",
                      style: TextStyle(fontSize: 11),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.0),
                      child: Text(
                        "Alligator Gar",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: SeaAquariumColor.greySoft, width: 1),
                        borderRadius: BorderRadius.circular(8),
                        color: SeaAquariumColor.primaryColor,
                      ),
                      padding: const EdgeInsets.all(
                        4.0,
                      ),
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ImageIcon(
                            AssetImage('assets/icons/people_ic.png'),
                            size: 18,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            "410m away ",
                            style: TextStyle(
                                fontSize: 11, fontWeight: FontWeight.normal),
                          ),
                          Text(
                            "Map",
                            style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.normal,
                                color: Colors.red),
                          )
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 12.0),
                      child: Text(
                        "       with is wide, alligator-like snout and razor-sharp teeth.It's easy to see how this fish acquired its name.Despite its ferocious appearance, the alligator gar poses like threat to human beings. They prefer to lie and wait for unsuspecting prey within reach, before lunging forward to grab their prey.\n"
                        "\n"
                        "As the largest species in the gar family, the alligator gar can reach up to 3 meters in length.Scientists have trace this species in fossil record dating back to 100 million years ago, hence they are also known as living fossils",
                        style: TextStyle(
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
