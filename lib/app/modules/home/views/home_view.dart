import 'package:crypto_wallet/app/const/utils.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        primary: true,
        child: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: double.infinity,
                height: 200,
                child: Card(
                  color: backgroundCardColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32)),
                  elevation: 0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(height: 8),
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
                          '\$100,000.25',
                          style: TextStyle(fontWeight: FontWeight.bold),
                          textScaleFactor: 2.5,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          Card(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24)),
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "+2.49%",
                                textScaleFactor: 1.1,
                              ),
                            ),
                          ),
                          const SizedBox(width: 5),
                          const Text(
                            '+\$67.54',
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
                    Text(
                      "FAVORITE CURRENCIES",
                      textScaleFactor: 1.1,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Icon(Icons.more_horiz_rounded)
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
