import 'package:flutter/material.dart';

import '../../../data/models/animal_model.dart';
import '../../../shared/app_styles.dart';

class AnimalCardDetails extends StatelessWidget {
  const AnimalCardDetails({
    Key? key,
    required this.args,
  }) : super(key: key);

  final AnimalModel args;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          height: size.height * 0.35,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(Uri.parse(args.imageLink).toString()),
                fit: BoxFit.fill),
            borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30)),
          ),
        ),
        Positioned(
          bottom: 0,
          child: Container(
            height: size.height * 0.15,
            width: MediaQuery.of(context).size.width,
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
              args.name,
              style: AppStyles.titleTextStyle,
            )),
          ),
        ),
      ],
    );
  }
}
