
import 'package:flutter/material.dart';
import 'package:flutter_components/flutter_components.dart';

class BalanceCard extends StatelessWidget {
  const BalanceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250.0,
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF0B52E1), Color(0xFF3E68DF)],
          ),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Stack(
          children: [
            Positioned(
              left: -70.0,
              bottom: -125.0,
              child: Image.asset("assets/images/bottom_left.png", scale: 0.75),
            ),
            Positioned(
              right: -40.0,
              top: -90.0,
              child: Image.asset("assets/images/top_right.png", scale: 0.75),
            ),
            CardContentSection(),
          ],
        ),
      ),
    );
  }
}

class CardContentSection extends StatelessWidget {
  const CardContentSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              spacing: 10.0,
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text(
                  "Balance",
                  style: context.textTheme.bodyLarge!.copyWith(
                    color: Colors.white,
                  ),
                ),
                Text(
                  "\$ 783,666,00",
                  style: context.textTheme.titleLarge!.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 10.0,
                    children: [
                      Text(
                        "Monthly Profit",
                        style: context.textTheme.bodyLarge!.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "\$ 67,66,00",
                        style: context.textTheme.titleLarge!.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                AppButton(
                  prefixSpacing: 0.0,
                  color: Colors.white30,
                  borderRadiusValue: 20.0,
                  padding: EdgeInsets.symmetric(
                    horizontal: 10.0,
                    vertical: 3.0,
                  ),
                  title: "+15%",
                  fontSize: 20.0,
                  onPressed: () {},
                  prefix: Icon(
                    Icons.arrow_drop_up_outlined,
                    color: Colors.white,
                    size: 50.0,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
