import 'package:blogflutter/custom_widgets/blog_detail.dart';
import 'package:flutter/material.dart';

Widget widgetBlogItem(
        {required String imagePath,
        required String title,
        required String subtitle,
        required String description,
        required BuildContext context}) =>
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          borderRadius: BorderRadius.circular(20.0),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => widgetBlogDetail(
                        imagePath: imagePath,
                        title: title,
                        subtitle: subtitle,
                        description: description)));
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.black.withOpacity(0.05),
            ),
            height: 200.0,
            width: double.infinity,
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        InkWell(
          borderRadius: BorderRadius.circular(10.0),
          onTap: () {
            debugPrint(title);
          },
          child: Container(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Text(subtitle, style: const TextStyle(fontSize: 16)),
              ],
            ),
          ),
        ),
        Container(
          width: 50.0,
          child: const Divider(
            color: Colors.black,
            thickness: 5,
          ),
        ),
        const SizedBox(
          height: 20.0,
        ),
      ],
    );
