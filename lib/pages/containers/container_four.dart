import 'package:flutter/material.dart';
import 'package:flutter_web/utils/constants.dart';
import 'package:flutter_web/widgets/common_container.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ContainerFour extends StatelessWidget {
  const ContainerFour({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (_) => _mobileContainerFirst(),
      desktop: (_) => _desktopContainerFirst(),
    );
  }

  Widget _desktopContainerFirst() {
    return CommonContainer(
        'free some cost',
        'Save cost \nfor you and \nfamily',
        'Tellus lacus morbi sagittis lacus in. Amet nisl at mauris enim accumsan nisi, tincidunt vel. Enim ipsum, amet quis ullamcorper eget ut.',
        illustration2,
        true);
  }

  Widget _mobileContainerFirst() {
    return CommonContainerMobile(
        'free some cost',
        'Save cost \nfor you and \nfamily',
        'Tellus lacus morbi sagittis lacus in. Amet nisl at mauris enim accumsan nisi, tincidunt vel. Enim ipsum, amet quis ullamcorper eget ut.',
        illustration2);
  }
}
