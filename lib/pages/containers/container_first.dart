import 'package:flutter/material.dart';
import 'package:flutter_web/utils/colors.dart';
import 'package:flutter_web/utils/constants.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ContainerFirst extends StatelessWidget {
  const ContainerFirst({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (_) => _mobileContainerFirst(),
      desktop: (_) => _desktopContainerFirst(),
    );
  }

  Widget _desktopContainerFirst() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: w! / 10, vertical: 20),
      child: Row(
        children: [
          Expanded(
              child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Track your \nExpenses to \nSave Money',
                  style: TextStyle(
                      fontSize: w! / 20,
                      fontWeight: FontWeight.bold,
                      height: 1.1),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Helps you to organize your income and expenses',
                  style: TextStyle(color: Colors.grey.shade400, fontSize: 20),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Container(
                      height: 45,
                      child: ElevatedButton.icon(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(AppColors.primary)),
                        onPressed: () {},
                        icon: Icon(Icons.arrow_drop_down),
                        label: Text('Try Free Demo'),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Text(
                      '- Web, iOS and Android',
                      style:
                          TextStyle(color: Colors.grey.shade400, fontSize: 20),
                    ),
                  ],
                )
              ],
            ),
          )),
          Expanded(
              child: Container(
            height: 530,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(illustration1), fit: BoxFit.contain)),
          ))
        ],
      ),
    );
  }

  Widget _mobileContainerFirst() {
    return Column(
      children: [
        Container(
          height: w! / 1.3,
          width: w! / 1.3,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(illustration1), fit: BoxFit.contain)),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          'Track your \nExpenses to \nSave Money',
          style: TextStyle(
              fontSize: w! / 10,
              fontWeight: FontWeight.bold,
              height: 1.1),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          'Helps you to organize \nyour income and expenses',
          style: TextStyle(color: Colors.grey.shade400, fontSize: 16),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 30,
        ),
        SizedBox(
          height: 45,
          child: ElevatedButton.icon(
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(AppColors.primary)),
            onPressed: () {},
            icon: const Icon(Icons.arrow_drop_down),
            label: const Text('Try Free Demo'),
          ),
        ),
        const SizedBox(
          height  : 10,
        ),
        Text(
          '- Web, iOS and Android',
          style: TextStyle(color: Colors.grey.shade400, fontSize: 16),
        ),
      ],
    );
  }
}
