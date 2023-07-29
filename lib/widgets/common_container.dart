import 'package:flutter/material.dart';
import 'package:flutter_web/utils/colors.dart';
import 'package:flutter_web/utils/constants.dart';

Widget CommonContainer(
    String header, String title, String desc, String image, bool imageLeft) {
  return Container(
    color: Colors.white,
    padding: EdgeInsets.symmetric(horizontal: w! / 10, vertical: 30),
    child: Row(
      children: [
        imageLeft
            ? Expanded(
                child: Container(
                height: 433,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(image), fit: BoxFit.contain)),
              ))
            : Container(),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              header.toUpperCase(),
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey.shade400,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              title,
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: w! / 18,
                fontWeight: FontWeight.bold,
                height: 1.1,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              desc,
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.grey.shade400,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                  color: AppColors.primary,
                ),
                label: Text(
                  'Learn more',
                  style: TextStyle(color: AppColors.primary),
                )),
          ],
        )),
        !imageLeft
            ? Expanded(
                child: Container(
                height: 433,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(image), fit: BoxFit.contain)),
              ))
            : Container(),
      ],
    ),
  );
}

Widget CommonContainerMobile(
    String header, String title, String desc, String image) {
  return Container(
    color: Colors.white,
    padding: EdgeInsets.symmetric(horizontal: w! / 10, vertical: 30),
    child: Column(
      children: [
        Container(
          height: 200,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(image), fit: BoxFit.contain)),
        ),
        Text(
          header.toUpperCase(),
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey.shade400,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: w! / 10,
            fontWeight: FontWeight.bold,
            height: 1.1,
            color: Colors.black,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          desc,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Colors.grey.shade400,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton.icon(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_forward_ios,
              size: 16,
              color: AppColors.primary,
            ),
            label: Text(
              'Learn more',
              style: TextStyle(color: AppColors.primary),
            )),
      ],
    ),
  );
}
