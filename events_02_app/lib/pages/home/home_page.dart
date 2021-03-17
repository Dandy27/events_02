import 'package:events_02_app/mobile_breakpoint.dart';
import 'package:events_02_app/pages/home/widget/app_bar/mobile_app_bar.dart';
import 'package:events_02_app/pages/home/widget/app_bar/web_app_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        appBar: constraints.maxWidth < mobileBreakpoint
            ? PreferredSize(
                child: MobileAppBar(),
                preferredSize: Size(double.infinity, 56),
              )
            : PreferredSize(child: WebAppBar(), preferredSize: Size(double.infinity, 72)),
        drawer: constraints.maxWidth < mobileBreakpoint ? Drawer() : null
      );
    });
  }
}
