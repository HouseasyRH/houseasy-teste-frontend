import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../shared/app_colors.dart';
import '../../../shared/app_styles.dart';
import '../home_controller.dart';
import 'animal_card.dart';
import 'category_button.dart';
import 'explore_button.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    HomeController homeController = context.watch<HomeController>();
    final size = MediaQuery.of(context).size;

    return Stack(
      children: [
        Container(
          height: size.width * 1,
          decoration: const BoxDecoration(
            color: AppColors.backgroundColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 24,
              ),
              child: Text(
                'Explore \nEasy Zoo',
                style: AppStyles.titleTextStyle,
                textAlign: TextAlign.start,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              child: SizedBox(
                  height: 30,
                  child: Row(
                    children: [
                      SizedBox(
                        height: 50,
                        child: CategoryButton(
                          enabled: true,
                          title: 'All',
                          onTap: () {
                            if (homeController.enabled) {
                              homeController.enabled = false;
                              homeController.setAllAnimals();
                            }
                          },
                        ),
                      ),
                      Expanded(
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          physics: const BouncingScrollPhysics(),
                          itemCount: homeController.types.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: CategoryButton(
                                enabled: homeController.enabled,
                                title: homeController.types.elementAt(index),
                                onTap: () {
                                  if (!homeController.enabled) {
                                    homeController.enabled = true;
                                    homeController.getAnimalsByType(
                                        homeController.types.elementAt(index));
                                  }
                                },
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: SizedBox(
                height: size.width * 0.8,
                child: !homeController.loanding
                    ? homeController.animals.isNotEmpty
                        ? ListView.builder(
                            scrollDirection: Axis.horizontal,
                            physics: const BouncingScrollPhysics(),
                            itemCount: homeController.animals.length,
                            itemBuilder: (context, index) {
                              return Hero(
                                tag: homeController.animals[index].id,
                                child: AnimalCard(
                                  args: homeController.animals[index],
                                ),
                              );
                            },
                          )
                        : Center(
                            child: Align(
                              alignment: Alignment.center,
                              child: SizedBox(
                                height: 70,
                                width: size.width * 0.60,
                                child: ExploreButton(
                                  onTap: () {
                                    homeController.getAnimals();
                                  },
                                ),
                              ),
                            ),
                          )
                    : const Center(
                        child: CircularProgressIndicator(),
                      ),
              ),
            ),
            homeController.animals.isNotEmpty
                ? Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      height: size.height * 0.08,
                      width: size.width * 0.60,
                      child: ExploreButton(
                        onTap: () {
                          homeController.getAnimals();
                        },
                      ),
                    ),
                  )
                : SizedBox(),
          ],
        )
      ],
    );
  }
}
