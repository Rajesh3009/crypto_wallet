import 'package:crypto_wallet/app/data/coins.dart';
import 'package:flutter/material.dart';

const Color backgroundCardColor = Color.fromRGBO(213, 225, 255, 1.00);
const Color backgroundCryptoCardColor = Color.fromRGBO(255, 236, 212, 1.00);

Widget customCircularCard(String value) {
  return Card(
    color: Colors.white,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        value,
        textScaleFactor: 1.1,
      ),
    ),
  );
}

List<Coins> favoriteCurrencies = [
  Coins('BTC', 'Bitcion', '+2.49', const Icon(Icons.android_rounded),
      '157,000.123', Colors.orangeAccent),
  Coins('ETH', 'Ethereum', '+2.49', const Icon(Icons.android_rounded),
      '157,000.123', Colors.black12),
  Coins('ETC', 'Ethereum Classic', '+2.49', const Icon(Icons.android_rounded),
      '157,000.123', Colors.green.shade200)
];
