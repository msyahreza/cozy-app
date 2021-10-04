// ignore_for_file: prefer_const_constructors

import 'package:cozy_app/model/city.dart';
import 'package:cozy_app/theme.dart';
import 'package:cozy_app/widgets/city_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: edge,
          ),
          child: ListView(
            children: [
              Padding(
                padding: EdgeInsets.only(left: edge),
                child: Text(
                  'Explore Now', 
                  style: blackTextStyle.copyWith(
                    fontSize: 24
                  ),
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Padding(
                padding: EdgeInsets.only(left: edge),
                child: Text(
                  'Mencari kosan yang cozy',
                  style: greyTextStyle.copyWith(
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Popular Cities',
                  style: regularTextStyle.copyWith(
                  fontSize: 16,
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(
                      width: 24,
                    ),
                    CityCard(
                      City(
                        id: 1, 
                        imageUrl: 'assets/city1.png', 
                        name: 'Jakarta',
                      )
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    CityCard(
                      City(
                        id: 2,
                        imageUrl: 'assets/city2.png',
                        name: 'Bandung',
                        isPopular: true,
                      )
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    CityCard(
                    City(
                      id: 3,
                      imageUrl: 'assets/city3.png',
                      name: 'Surabaya',
                    )
                    ),
                    SizedBox(
                      width: 24,
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}
