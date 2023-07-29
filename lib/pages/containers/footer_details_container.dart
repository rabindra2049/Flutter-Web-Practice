import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class FooterDetailsView extends StatelessWidget {
  const FooterDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (_) => _mobileView(),
      desktop: (_) => _desktopView(),
    );
  }

  Widget _mobileView() {
    return Container();
  }

  Widget _desktopView() {
    return Container();
  }
}
