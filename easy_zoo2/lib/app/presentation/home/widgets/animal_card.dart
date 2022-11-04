import 'package:flutter/material.dart';

class AnimalCard extends StatelessWidget {
  const AnimalCard({
    Key? key,
    required this.image,
    required this.title,
  }) : super(key: key);

  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          height: 400,
          width: 250,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                spreadRadius: 2,
                blurRadius: 3,
                offset: const Offset(0, 8), // changes position of shadow
              ),
            ],
            image: DecorationImage(
                image: NetworkImage(Uri.parse(image).toString()),
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
            height: 120,
            width: 250,
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
            child: Center(
              child: Text(
                textAlign: TextAlign.center,
                title,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontFamily: 'JosefinSans',
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
