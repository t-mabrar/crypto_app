import 'package:flutter/material.dart';
import 'package:flutter_components/flutter_components.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ProfileGraph extends StatefulWidget {
  const ProfileGraph({super.key});

  @override
  State<ProfileGraph> createState() => _ProfileGraphState();
}

class _ProfileGraphState extends State<ProfileGraph> {
  final year = DateTime.now().year;
  final month = DateTime.now().month;
  final day = DateTime.now().day;

  String selectedPreiod = "1D";
  late List<ChartData> chartData;
  @override
  void initState() {
    super.initState();
    chartData = [
      ChartData(DateTime(year, month, day, 14, 00), 15),
      ChartData(DateTime(year, month, day, 16, 00), 28),
      ChartData(DateTime(year, month, day, 18, 00), 20),
      ChartData(DateTime(year, month, day, 20, 00), 10),
      ChartData(DateTime(year, month, day, 22, 00), 50),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ...["1D", "1W", "1M", "1Y", "5Y"].map(
              (eachPeriod) => AppButton(
                fontColor:
                    eachPeriod == selectedPreiod ? Colors.white : Colors.black,
                color: selectedPreiod == eachPeriod ? null : Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 8.0),
                title: eachPeriod,
                onPressed: () {
                  setState(() {
                    selectedPreiod = eachPeriod;
                  });
                },
                borderRadiusValue: 50.0,
              ),
            ),
          ],
        ),
        SfCartesianChart(
          margin: EdgeInsets.all(5.0),
          enableAxisAnimation: true,
          primaryYAxis: CategoryAxis(
            maximum: 55.0,
            interval: 10,
            opposedPosition: true,
            majorGridLines: MajorGridLines(
              width: 1.0,
              color: Colors.grey.shade300,
            ),

            axisLabelFormatter: (details) {
              return ChartAxisLabel(
                "\$ ${details.value}",
                context.textTheme.labelLarge!.copyWith(color: Colors.black),
              );
            },
          ),
          primaryXAxis: DateTimeAxis(
            labelStyle: context.textTheme.labelLarge!.copyWith(
              color: Colors.black,
            ),
          ),
          series: <AreaSeries>[
            AreaSeries<ChartData, DateTime>(
              gradient: LinearGradient(
                colors: [context.primaryColor.withAlpha(150), Colors.white],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.0, 0.9],
              ),
              dataSource: chartData,
              borderColor: context.primaryColor,
              borderWidth: 2,
              xValueMapper: (ChartData data, _) => data.x,
              yValueMapper: (ChartData data, _) => data.y,
            ),
          ],
        ),
        SizedBox(height: 10.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                SizedBox(
                  height: 60.0,
                  child: AppButton.widget(
                    shape: BoxShape.circle,
                    onPressed: () {},
                    child: SvgPicture.asset("assets/svgs/buy.svg"),
                  ),
                ),
                SizedBox(height: 5.0),
                Text("Buy", style: context.textTheme.bodySmall),
              ],
            ),
            Column(
              children: [
                SizedBox(
                  height: 60.0,
                  child: AppButton.widget(
                    shape: BoxShape.circle,
                    onPressed: () {},
                    child: SvgPicture.asset("assets/svgs/send.svg"),
                  ),
                ),
                SizedBox(height: 5.0),
                Text("Send", style: context.textTheme.bodySmall),
              ],
            ),
            Column(
              children: [
                SizedBox(
                  height: 60.0,
                  child: AppButton.widget(
                    shape: BoxShape.circle,
                    onPressed: () {},
                    child: SvgPicture.asset("assets/svgs/swap.svg"),
                  ),
                ),
                SizedBox(height: 5.0),
                Text("Swap", style: context.textTheme.bodySmall),
              ],
            ),
            Column(
              children: [
                SizedBox(
                  height: 60.0,
                  child: AppButton.widget(
                    shape: BoxShape.circle,
                    onPressed: () {},
                    child: SvgPicture.asset("assets/svgs/add_funds.svg"),
                  ),
                ),
                SizedBox(height: 5.0),
                Text("Add Funds", style: context.textTheme.bodySmall),
              ],
            ),
            Column(
              children: [
                SizedBox(
                  height: 60.0,
                  child: AppButton.widget(
                    shape: BoxShape.circle,
                    onPressed: () {},
                    child: SvgPicture.asset("assets/svgs/options.svg"),
                  ),
                ),
                SizedBox(height: 5.0),
                Text("Options", style: context.textTheme.bodySmall),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class ChartData {
  ChartData(this.x, this.y);
  final DateTime x;
  final double y;
}
