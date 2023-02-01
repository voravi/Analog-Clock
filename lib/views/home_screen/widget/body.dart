import 'package:analog_clock/utils/size_config.dart';
import 'package:analog_clock/views/home_screen/widget/country_card.dart';
import 'package:analog_clock/views/home_screen/widget/time_in_hour_and_minute.dart';
import 'package:flutter/material.dart';
import 'clock.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(bottom: SizeConfig().getProportionateScreenWidth(15)),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              Text(
                "Newport Beach, USA | PST",
                style: Theme.of(context).textTheme.bodyText1,
              ),
              TimeInHourAndMinute(),
              Clock(),
              Spacer(),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CountryCard(
                      country: "New York, USA",
                      timeZone: "+3 HRS | EST",
                      iconSrc: "assets/icons/Liberty.svg",
                      time: "9:20",
                      period: "PM",
                    ),
                    CountryCard(
                      country: "Sydney, AU",
                      timeZone: "+19 HRS | AEST",
                      iconSrc: "assets/icons/Sydney.svg",
                      time: "1:20",
                      period: "AM",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
