import 'package:flutter/material.dart';
import 'package:flutter_web/utils/colors.dart';
import 'package:flutter_web/utils/constants.dart';
import 'package:flutter_web/widgets/common_container.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ContainerThird extends StatelessWidget {
  const ContainerThird({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (_) => _mobileContainerFirst(),
      desktop: (_) => _desktopContainerFirst(),
    );
  }

  Widget _desktopContainerFirst() {
    return CommonContainer(
        'ALWAYS ONLINE',
        'Real-time \nsupport \nwith cloud',
        'Tellus lacus morbi sagittis lacus in. Amet nisl at mauris enim accumsan nisi, tincidunt vel. Enim ipsum, amet quis ullamcorper eget ut.',
        illustration1,
        false
    );
  }

  Widget _mobileContainerFirst() {
    return CommonContainerMobile(
        'ALWAYS ONLINE',
        'Real-time \nsupport \nwith cloud',
        'Tellus lacus morbi sagittis lacus in. Amet nisl at mauris enim accumsan nisi, tincidunt vel. Enim ipsum, amet quis ullamcorper eget ut.',
        illustration1
    );
  }
}
