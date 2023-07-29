import 'package:flutter/material.dart';
import 'package:flutter_web/utils/constants.dart';
import 'package:responsive_builder/responsive_builder.dart';

class FooterView extends StatelessWidget {
  const FooterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (_) => _mobileView(),
      desktop: (_) => _desktopView(),
    );
  }

  Widget _mobileView() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: w! / 20, vertical: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Divider(
            color: Colors.grey.shade200,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Privacy & Terms',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black.withOpacity(0.7),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                'Contact Us',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black.withOpacity(0.7),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Copyright @ 2022 Expense Tracker',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14,
              color: Colors.black.withOpacity(0.7),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.facebook,
                color: Colors.grey.shade500,
              ),
              const SizedBox(
                width: 10,
              ),
              Icon(
                Icons.contact_emergency,
                color: Colors.grey.shade500,
              ),
              const SizedBox(
                width: 10,
              ),
              Icon(
                Icons.web,
                color: Colors.grey.shade500,
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _desktopView() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: w! / 10, vertical: 20),
      child: Column(
        children: [
          Divider(
            color: Colors.grey.shade200,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    'Privacy & Terms',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black.withOpacity(0.7),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Contact Us',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black.withOpacity(0.7),
                    ),
                  ),
                ],
              ),
              Text(
                'Copyright @ 2022 Expense Tracker',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black.withOpacity(0.7),
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.facebook,
                    color: Colors.grey.shade500,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.contact_emergency,
                    color: Colors.grey.shade500,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.web,
                    color: Colors.grey.shade500,
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
