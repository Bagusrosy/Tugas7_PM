import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:game_store/components/products/product_card.dart';
import 'package:game_store/data/data.dart';
import 'package:game_store/functions/functions.dart';

class ProductGrid extends StatefulWidget {
  final int? limit;
  const ProductGrid({super.key, this.limit});

  @override
  State<ProductGrid> createState() => _ProductGridState();
}

class _ProductGridState extends State<ProductGrid> {
  final ScrollController _scrollController = ScrollController();

  String formatToIDR(double priceInIDR) {
    final formatCurrency =
        NumberFormat.currency(locale: 'id_ID', symbol: 'Rp ', decimalDigits: 0);
    return formatCurrency.format(priceInIDR);
  }

  @override
  Widget build(BuildContext context) {
    data.shuffle();
    return GridView.builder(
      controller: _scrollController,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        childAspectRatio: 2 / 3,
      ),
      itemCount: widget.limit ?? data.length,
      itemBuilder: (context, index) {
        final String img = data[index]["src"];
        final String productName = data[index]["name"];
        final double priceInUSD = generateRandomPriceInUSD();
        final double priceInIDR = convertUSDToIDR(priceInUSD);
        final String formattedPriceInIDR = formatToIDR(priceInIDR);
        return ProductCard(
            img: img, productName: productName, price: formattedPriceInIDR);
      },
    );
  }
}
