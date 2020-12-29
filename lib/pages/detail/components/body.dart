import 'package:covid19_app/constants.dart';
import 'package:covid19_app/models/pass_arguments.dart';
import 'package:covid19_app/pages/detail/components/info_percentage.dart';
import 'package:covid19_app/pages/detail/components/weekly_chart.dart';
import 'package:covid19_app/size_config.dart';
import 'package:covid19_app/utils/format_decimal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'dart:io' show Platform;

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int total = passArguments.total;
    int newCases = passArguments.newCases;
    String percentTotal = ((newCases * 100) / total).toStringAsFixed(2);

    return SafeArea(
      child: Container(
        color: kPrimaryColor.withOpacity(0.03),
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: SizeConfig.screenWidth * 0.9,
                height: SizeConfig.screenHeight * (Platform.isIOS ? 0.63 : 0.8),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 21),
                      blurRadius: 53,
                      color: Colors.black.withOpacity(0.05),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "New Cases",
                          style: TextStyle(fontSize: 16),
                        ),
                        SvgPicture.asset("assets/icons/more.svg"),
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: <Widget>[
                        Text(
                          "${formatDecimal(passArguments.newCases)} ",
                          style: Theme.of(context)
                              .textTheme
                              .headline2
                              .copyWith(color: kPrimaryColor, height: 1.2),
                        ),
                        Text(
                          "$percentTotal% ",
                          style: TextStyle(color: kPrimaryColor),
                        ),
                        SvgPicture.asset("assets/icons/increase.svg")
                      ],
                    ),
                    Text(
                      "From Health Center",
                      style: TextStyle(
                        fontWeight: FontWeight.w200,
                        color: kTextMediumColor,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 15),
                    WeeklyChart(),
                    SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InfoPercentage(
                          percent: "6.43",
                          title: "Form Last Week",
                        ),
                        InfoPercentage(
                          percent: "9.43",
                          title: "Recovry Rate",
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Container(
                width: SizeConfig.screenWidth * 0.9,
                height:
                    SizeConfig.screenHeight * (Platform.isIOS ? 0.25 : 0.33),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 21),
                      blurRadius: 53,
                      color: Colors.black.withOpacity(0.05),
                    ),
                  ],
                ),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Global Map",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        SvgPicture.asset("assets/icons/more.svg")
                      ],
                    ),
                    SizedBox(height: 10),
                    SvgPicture.asset("assets/icons/map.svg"),
                  ],
                ),
              ),
              SizedBox(height: 15),
            ],
          ),
        ),
      ),
    );
  }
}
