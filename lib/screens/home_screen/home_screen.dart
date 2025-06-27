import 'package:crypto_app/screens/home_screen/balance_card.dart';
import 'package:crypto_app/screens/home_screen/profile_graph.dart';
import 'package:flutter/material.dart';
import 'package:flutter_components/flutter_components.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Container(),
      appBar: AppBar(
        actionsPadding: EdgeInsets.only(right: 20.0),
        actions: [
          AppButton(
            title: "Get \$50",
            onPressed: () {},
            borderRadiusValue: 50.0,
          ),
          SizedBox(width: 10.0),
          Icon(Icons.search),
          SizedBox(width: 10.0),
          Icon(Icons.notifications),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(spacing: 20.0, children: [BalanceCard(), ProfileGraph()]),
      ),
    );
  }
}
