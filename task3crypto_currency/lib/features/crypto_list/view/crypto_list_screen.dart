import 'package:flutter/material.dart';
import 'package:task3crypto_currency/features/crypto_list/widgets/crypto_coin_tile.dart';
import 'package:task3crypto_currency/repositories/crypto_coins/crypto_coins_repository.dart';
import 'package:task3crypto_currency/repositories/models/crypto_coin.dart';

class CryptoListScreen extends StatefulWidget {
  const CryptoListScreen({super.key});

  @override
  State<CryptoListScreen> createState() => _CryptoListScreenState();
}

class _CryptoListScreenState extends State<CryptoListScreen> {
  List<CryptoCoin>? _cryptoCoinsList;

  @override
  void initState() {
    _loadCryptoCoins();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('CryptoCurrenciesList'),
      ),
      body: (_cryptoCoinsList == null)
          ? Center(child: CircularProgressIndicator())
          : ListView.separated(
              padding: EdgeInsets.only(top: 16),
              separatorBuilder: (context, i) => Divider(),
              itemCount: _cryptoCoinsList!.length,
              itemBuilder: (context, i) {
                final coin = _cryptoCoinsList![i];

                return CryptoCoinTile(coin: coin);
              },
            ),
    );
  }

  Future<void> _loadCryptoCoins() async {
    _cryptoCoinsList = await CryptoCoinsRepository().getCoinsList();
    setState(() {});
  }
}
