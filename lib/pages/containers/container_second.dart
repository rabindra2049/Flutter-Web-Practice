import 'package:flutter/material.dart';
import 'package:flutter_web/utils/colors.dart';
import 'package:flutter_web/utils/constants.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ContainerSecond extends StatelessWidget {
  const ContainerSecond({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (_) => _mobileContainerFirst(),
      desktop: (_) => _desktopContainerFirst(),
    );
  }

  Widget _desktopContainerFirst() {
    return Container(
      height: 750,
      width: double.infinity,
      decoration: BoxDecoration(color: AppColors.primary),
      child: Column(
        children: [
          Expanded(
              child: Stack(
            children: [
              Positioned(
                right: -20,
                top: -20,
                child: Container(
                  height: 320,
                  width: 320,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage(vector1),
                    fit: BoxFit.contain,
                  )),
                ),
              ),
              Positioned(
                left: -20,
                bottom: -20,
                child: Container(
                  height: 320,
                  width: 320,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage(vector2),
                    fit: BoxFit.contain,
                  )),
                ),
              ),
              Positioned(
                  left: 43,
                  right: 43,
                  bottom: 0,
                  child: Container(
                    width: double.infinity,
                    height: 550,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(dashboard),
                      ),
                    ),
                  ))
            ],
          )),
          Container(
            color: Colors.white,
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                companyLogo(fb),
                companyLogo(google),
                companyLogo(cocacola),
                companyLogo(samsung),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget companyLogo(String image) {
    return Container(
      height: 36,
      width: 160,
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
          image:
              DecorationImage(image: AssetImage(image), fit: BoxFit.contain)),
    );
  }

  Widget _mobileContainerFirst() {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      width: double.infinity,
      decoration: BoxDecoration(color: AppColors.primary),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 20,right: 20,bottom: 0,top: 20),
            width: double.infinity,
            height: 195,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(dashboard),
                fit: BoxFit.contain
              ),
            ),
          ),
          Container(
            width: double.infinity,
            color: Colors.white,
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: Column(
              children: [
                companyLogo(fb),
                companyLogo(google),
                companyLogo(cocacola),
                companyLogo(samsung),
              ],
            ),
          )
        ],
      ),
    );
  }
}
