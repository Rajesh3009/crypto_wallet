import 'package:crypto_wallet/app/const/utils.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Custom Card for Balance
              SizedBox(
                width: double.infinity,
                height: 200,
                child: Card(
                  color: backgroundCardColor,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(32),
                          bottomRight: Radius.circular(32))),
                  elevation: 0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(height: 25),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            CircleAvatar(
                              child: Icon(
                                Icons.graphic_eq_rounded,
                              ),
                            ),
                            Icon(Icons.graphic_eq_rounded)
                          ],
                        ),
                      ),
                      const SizedBox(height: 5),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        child: Text(
                          '\$' '100,000.25',
                          style: TextStyle(fontWeight: FontWeight.bold),
                          textScaleFactor: 2.5,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          customCircularCard('+2.49%'),
                          const SizedBox(width: 5),
                          const Text(
                            '+' '\$' '67.54',
                            textScaleFactor: 1.1,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    // Favorite Currencies
                    Text(
                      "FAVORITE CURRENCIES",
                      textScaleFactor: 1.1,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Icon(Icons.more_horiz_rounded)
                  ],
                ),
              ),
              const SizedBox(height: 5),

              // Crypto Card

              SizedBox(
                width: double.infinity,
                height: 200,
                child: ListView.builder(
                  primary: false,
                  itemCount: favoriteCurrencies.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => CustomFavCard(
                    coinShortname: favoriteCurrencies[index].coinShortname,
                    coinFullname: favoriteCurrencies[index].coinFullname,
                    changeInPercentage:
                        favoriteCurrencies[index].changeInPercentage,
                    icon: favoriteCurrencies[index].icon,
                    price: favoriteCurrencies[index].price,
                    color: favoriteCurrencies[index].color,
                  ),
                ),
              ),
              const SizedBox(height: 5),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomFavCard extends StatelessWidget {
  final String coinShortname;
  final String coinFullname;
  final String changeInPercentage;
  final Icon icon;
  final String price;
  final Color color;
  const CustomFavCard({
    Key? key,
    required this.coinShortname,
    required this.coinFullname,
    required this.changeInPercentage,
    required this.icon,
    required this.price,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      // height: 300,
      child: Card(
        color: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 24, top: 24),
              child: Text(
                coinShortname,
                textScaleFactor: 1.3,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24, top: 8),
              child: Text(coinFullname,
                  style: const TextStyle(color: Colors.black54)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24, top: 4),
              child: customCircularCard('$changeInPercentage%'),
            ),
            const SizedBox(height: 10),
            const Center(child: Text('Chart')),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Icon(Icons.android),
                Text('\$$price',
                    style: const TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
            const SizedBox(height: 10)
          ],
        ),
      ),
    );
  }
}
