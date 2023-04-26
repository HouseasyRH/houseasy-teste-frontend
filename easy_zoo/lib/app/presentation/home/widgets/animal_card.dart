// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:easy_zoo/app/shared/app_styles.dart';
import 'package:flutter/material.dart';

import 'package:easy_zoo/app/data/models/animal_model.dart';
import 'package:easy_zoo/app/routes/routes.dart';

class AnimalCard extends StatelessWidget {
  const AnimalCard({
    Key? key,
    required this.args,
  }) : super(key: key);


  final AnimalModel args;

  @override
  Widget build(BuildContext context) {
   final size= MediaQuery.of(context).size;
   
    return MaterialButton(
      onPressed: (){
        Navigator.pushNamed(context, Routes.details,
                        arguments: args);
      },
      child: Stack(
        children: [
          Container(
           
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            width: size.width * 0.55,
                height: size.width * 0.8,
            // height: 350,
            // width: 230,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 3,
                  offset: const Offset(0, 5), // changes position of shadow
                ),
              ],
              image: DecorationImage(
                  image: NetworkImage(Uri.parse(args.imageLink).toString()),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(25),
            ),
          ),
          Positioned(
            top: 10,
            right: 20,
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.favorite,
                size: 40,
                color: Colors.white.withAlpha(100),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: size.width * 0.55,
                height: size.width * 0.2,
              margin: const EdgeInsets.symmetric(horizontal: 10),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.transparent,
                      Colors.black,
                    ]),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
              ),
              child: Column(
                children: [
                  Center(
                    child: Text(
                      textAlign: TextAlign.center,
                      args.name,
                      style:  AppStyles.titleCardTextStyle
                    ),
                  ),
                  Text(
                      textAlign: TextAlign.start,
                      args.animalType,
                      style: AppStyles.subtitleCardTextStyle
                    ),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
