import 'package:analog_clock/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widget/body.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset("assets/icons/Settings.svg"),
        ),
        actions: [
          buildAddButton(context),
        ],
      ),
      body: Body(),
    );
  }

  Padding buildAddButton(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: SizeConfig().getProportionateScreenWidth(12)),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: SizeConfig().getProportionateScreenWidth(32),
          decoration: BoxDecoration(color: Theme.of(context).primaryColor, shape: BoxShape.circle),
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
