// ignore_for_file: prefer_const_constructors, unnecessary_string_interpolations

import 'package:cozy_app/theme.dart';
import 'package:flutter/material.dart';

class FacilityItem extends StatelessWidget {
  final String name;
  final String imageUrl;
  final int total;

  FacilityItem({
    this.name,
    this.imageUrl,
    this.total, 
  });
  
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          imageUrl,
          width: 32,
        ),
        SizedBox(
          height: 8,
        ),
        Text.rich(
          TextSpan(
            text: '$total',
            style: purpleTextStyle.copyWith(fontSize: 16),
            children: [
              TextSpan(
                text: ' $name',
                style: greyTextStyle.copyWith(
                  fontSize: 16
                ),
              ),
            ]
          ),
        ),
      ],
    );
  }
}
