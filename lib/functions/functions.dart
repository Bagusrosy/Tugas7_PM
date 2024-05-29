import 'dart:math';
import 'package:intl/intl.dart';

shuffleArray(List array) {
  return array.shuffle();
}

// generateRandomPrice() {
//   int price = Random().nextInt(700) + 20;
//   return price.toDouble();
// }

// Fungsi untuk menghasilkan harga acak dalam dolar
double generateRandomPriceInUSD() {
  int price = Random().nextInt(700) + 20;
  return price.toDouble();
}

// Fungsi untuk mengonversi harga dari dolar ke rupiah
double convertUSDToIDR(double priceInUSD) {
  double exchangeRate = 14000.0; // Nilai tukar USD ke IDR
  return priceInUSD * exchangeRate;
}

String formatToIDR(double priceInIDR) {
  final formatCurrency =
      NumberFormat.currency(locale: 'id_ID', symbol: 'Rp ', decimalDigits: 0);
  return formatCurrency.format(priceInIDR);
}

void main() {
  double priceInUSD = generateRandomPriceInUSD();
  double priceInIDR = convertUSDToIDR(priceInUSD);
  print("Harga dalam USD: \$${priceInUSD.toStringAsFixed(2)}");
  print("Harga dalam IDR: Rp${priceInIDR.toStringAsFixed(0)}");
}
