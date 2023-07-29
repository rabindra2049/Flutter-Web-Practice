import 'package:flutter/material.dart';
import 'package:flutter_web/utils/colors.dart';
import 'package:flutter_web/utils/constants.dart';
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

  Widget _desktopView() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: w! / 10, vertical: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(child: appLogo()),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _getNavHeaderTitle('Links'),
                const SizedBox(
                  height: 20,
                ),
                _getSubNavTitle('Home'),
                const SizedBox(
                  height: 8,
                ),
                _getSubNavTitle('About Us'),
                const SizedBox(
                  height: 8,
                ),
                _getSubNavTitle('Careers'),
                const SizedBox(
                  height: 8,
                ),
                _getSubNavTitle('Pricing'),
                const SizedBox(
                  height: 8,
                ),
                _getSubNavTitle('Features'),
                const SizedBox(
                  height: 8,
                ),
                _getSubNavTitle('Blog'),
              ],
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _getNavHeaderTitle('Legal'),
                const SizedBox(
                  height: 20,
                ),
                _getSubNavTitle('Terms of use'),
                const SizedBox(
                  height: 8,
                ),
                _getSubNavTitle('Terms of conditions'),
                const SizedBox(
                  height: 8,
                ),
                _getSubNavTitle('Privacy Policy'),
              ],
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _getNavHeaderTitle('Newsletter'),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Over 25000 people have subscribed',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black.withOpacity(0.6),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.black, width: 2)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 16),
                        child: Text(
                            'Enter you email'
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor:
                            MaterialStateProperty.all(AppColors.primary),
                          ),
                          child: const Text(
                            "Subscribe",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  'We don’t sell your email and spam',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black.withOpacity(0.4),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _mobileView() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: w! / 10, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          appLogo(),
          const SizedBox(
            height: 40,
          ),
          _getNavHeaderTitle('Links'),
          const SizedBox(
            height: 10,
          ),
          _getSubNavTitle('Home'),
          const SizedBox(
            height: 8,
          ),
          _getSubNavTitle('About Us'),
          const SizedBox(
            height: 8,
          ),
          _getSubNavTitle('Careers'),
          const SizedBox(
            height: 8,
          ),
          _getSubNavTitle('Pricing'),
          const SizedBox(
            height: 8,
          ),
          _getSubNavTitle('Features'),
          const SizedBox(
            height: 8,
          ),
          _getSubNavTitle('Blog'),
          const SizedBox(
            height: 30,
          ),
          _getNavHeaderTitle('Legal'),
          const SizedBox(
            height: 10,
          ),
          _getSubNavTitle('Terms of use'),
          const SizedBox(
            height: 8,
          ),
          _getSubNavTitle('Terms of conditions'),
          const SizedBox(
            height: 8,
          ),
          _getSubNavTitle('Privacy Policy'),
          const SizedBox(
            height: 30,
          ),
          _getNavHeaderTitle('Newsletter'),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Over 25000 people have subscribed',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              color: Colors.black.withOpacity(0.6),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.black, width: 2)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 16),
                  child: Text(
                    'Enter you email'
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(AppColors.primary),
                    ),
                    child: const Text(
                      "Subscribe",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            'We don’t sell your email and spam',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 12,
              color: Colors.black.withOpacity(0.4),
            ),
          ),
        ],
      ),
    );
  }

  Widget appLogo() {
    return Container(
      width: 110,
      height: 36,
      decoration:
          const BoxDecoration(image: DecorationImage(image: AssetImage(logo))),
    );
  }
}

Widget _getSubNavTitle(String text) {
  return Text(
    text,
    textAlign: TextAlign.center,
    style: TextStyle(
      fontSize: 14,
      color: Colors.black.withOpacity(0.6),
    ),
  );
}

Widget _getNavHeaderTitle(String text) {
  return Text(
    text.toUpperCase(),
    textAlign: TextAlign.center,
    style: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: Colors.black.withOpacity(0.9),
    ),
  );
}
