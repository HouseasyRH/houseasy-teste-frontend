import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../data/models/animal_model.dart';
import '../../../shared/app_styles.dart';
import '../details_controller.dart';
import 'animal_card_details.dart';
import 'animal_data.dart';

class DetailsBody extends StatelessWidget {
  DetailsBody({Key? key, required this.animal}) : super(key: key);
  AnimalModel? animal;

  @override
  Widget build(BuildContext context) {
    final datailsController = context.watch<DetailsController>();
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: animal!.id,
              child: AnimalCardDetails(
                args: animal!,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Animal Details',
                  style: AppStyles.descriptionTitleTextStyle,
                ),
                SizedBox(
                  height: 10,
                )
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      AnimalData(
                        title: 'Size ',
                        data:
                            '${datailsController.convertPesToMeters(animal!.lengthMin)} a ${datailsController.convertPesToMeters(animal!.lengthMax)} metros',
                      ),
                      AnimalData(
                        title: 'Weight',
                        data:
                            '${datailsController.convertLibrasToKilograms(animal!.weightMin)} a ${datailsController.convertLibrasToKilograms(animal!.weightMax)} Kg',
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      AnimalData(
                          title: 'Active time', data: animal!.activeTime),
                      AnimalData(
                        title: 'Life span',
                        data: '${animal!.lifespan} years',
                      )
                    ],
                  ),
                )
              ],
            ),
            const Divider(),
            AnimalData(
              data: animal!.latinName,
              title: 'Scientific name',
            ),
            const Divider(),
            AnimalData(
              data: animal!.animalType,
              title: 'Animal type',
            ),
            const Divider(),
            AnimalData(
              data: animal!.habitat,
              title: 'Habitat',
            ),
            const Divider(),
            AnimalData(
              data: animal!.diet,
              title: 'Diet',
            ),
            const Divider(),
            AnimalData(
              data: animal!.geoRange,
              title: 'Geo range',
            ),
          ],
        ),
      ),
    );
  }
}
