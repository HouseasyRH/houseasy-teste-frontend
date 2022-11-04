import 'package:easy_zoo/app/presentation/home/home_controller.dart';
import 'package:easy_zoo/app/presentation/home/widgets/animal_card.dart';
import 'package:easy_zoo/app/shared/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final homeController = context.watch<HomeController>();

    return Stack(
      children: [
        Container(
          height: 400,
          decoration: const BoxDecoration(
            color: AppColors.backgroundColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
          ),
        ),
        Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 24,
              ),
              child: Text(
                'Explore  Easy Zoologic',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                  fontFamily: 'JosefinSans',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            //   child: SizedBox(
            //     height: 200,
            //     child: ListView(
            //       scrollDirection: Axis.horizontal,
            //       children: const [],
            //     ),
            //   ),
            // ),
            SizedBox(
              height: 400,
              child: !homeController.loanding
                  ? homeController.animals.isNotEmpty
                      ? ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: homeController.animals.length,
                          itemBuilder: (context, index) {
                            return AnimalCard(
                              title: homeController.animals[index].name,
                              image: homeController.animals[index].imageLink,
                            );
                          },
                        )
                      : const Center(
                          child: Text('Nehum animal encontrado :('),
                        )
                  : const Center(
                      child: CircularProgressIndicator(),
                    ),
            ),
            TextButton(
              onPressed: () {
                homeController.getAnimals();
              },
              style: ButtonStyle(
                textStyle: MaterialStateProperty.all(const TextStyle(
                  fontSize: 20,
                )),
                minimumSize: MaterialStateProperty.all(const Size(200, 40)),
                backgroundColor:
                    MaterialStateProperty.all(AppColors.primaryColor),
              ),
              child: const Text('Buscar Animais'),
            ),
          ],
        ),
      ],
    );
  }
}
