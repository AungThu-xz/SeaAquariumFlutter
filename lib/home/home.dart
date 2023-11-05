import 'package:flutter/material.dart';
import 'package:sea_aquarium_flut/widgets/home_card_item.dart';
import 'package:sea_aquarium_flut/widgets/home_slide_item.dart';

import '../styles/colors.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomeBottomNavigationBar();
  }
}

class HomeBottomNavigationBar extends StatefulWidget {
  const HomeBottomNavigationBar({super.key});

  @override
  State<HomeBottomNavigationBar> createState() =>
      _HomeBottomNavigationBarState();
}

class _HomeBottomNavigationBarState extends State<HomeBottomNavigationBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: AppBar(
                leading: IconButton(
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    size: 18,
                  ),
                  onPressed: () {},
                ),
                title: Center(child: Image.asset('assets/icons/logo.png')),
                actions: [
                  IconButton(
                    icon: Image.asset('assets/icons/noti_ic.png'),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Container(
                  color: SeaAquariumColor.grey,
                  height: 180,
                )),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(4.0),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: SeaAquariumColor.greySoft,
                        ),
                        child: IconButton(
                            onPressed: () {},
                            icon: Image.asset('assets/icons/map_ic.png')),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        "Map",
                        style: TextStyle(),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(4.0),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey.shade200,
                        ),
                        child: IconButton(
                            onPressed: () {},
                            icon:
                                Image.asset('assets/icons/inhabitants_ic.png')),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        "Inhabitants",
                        style: TextStyle(),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(4.0),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey.shade200,
                        ),
                        child: IconButton(
                            onPressed: () {},
                            icon: Image.asset('assets/icons/shows_ic.png')),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        "Shows",
                        style: TextStyle(),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(4.0),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey.shade200,
                        ),
                        child: IconButton(
                            onPressed: () {},
                            icon: Image.asset('assets/icons/shopping_ic.png')),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        "Shopping",
                        style: TextStyle(),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 10.0, right: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(4.0),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey.shade200,
                        ),
                        child: IconButton(
                            onPressed: () {},
                            icon: Image.asset('assets/icons/dine_ic.png')),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        "Dine",
                        style: TextStyle(),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey.shade200,
                        ),
                        child: IconButton(
                            onPressed: () {},
                            icon: Image.asset(
                                'assets/icons/meet_and_greets_ic.png')),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        "Meet & Greets",
                        style: TextStyle(),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 60,
                  ),
                  const SizedBox(
                    width: 60,
                  ),
                ],
              ),
            ),
            GridView(
              primary: false,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.all(16),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1.3,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
              ),
              children: const <Widget>[
                HomeCardItem(
                    icon: 'assets/icons/ticket_ic.png',
                    label: "My e-tickets",
                    data: "There aen't \n"
                        "Any yet.",
                    redText: "Retrieve here"),
                HomeCardItem(
                    icon: 'assets/icons/hour_ic.png',
                    label: "Park hours",
                    data: "Today, 13 Feb \n"
                        "10am - 5pm",
                    redText: "Plan my visit"),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Upcoming Shows",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        "View all",
                        style: TextStyle(fontSize: 12, color: Colors.red),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Row(
                  children: List.generate(
                      5,
                      (index) => Padding(
                            /// 5 means , the total length - 1
                            padding: index == 4
                                ? const EdgeInsets.all(0)
                                : const EdgeInsets.only(right: 12.0),
                            child: const HomeSlideItem(),
                          )),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/icons/home_ic.png'),
              ),
              label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.wallet),
            label: 'Wallet',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/icons/more_ic.png'),
            ),
            label: 'More',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.red[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
