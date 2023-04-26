import 'package:flutter/material.dart';

import '../../data/models/animal_model.dart';
import 'widgets/details_body.dart';

class Details extends StatelessWidget {
  const Details({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)?.settings.arguments as AnimalModel;
    return Scaffold(
      body: SafeArea(
        child: DetailsBody(
          animal: args,
        ),
      ),
    );
  }
}
