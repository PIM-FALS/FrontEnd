import 'package:fals/features/news/screens/home/widgets/home_appbar.dart';
import 'package:fals/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../utils/constants/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  /// Appbar
                  THomeAppBar(),
                  const SizedBox(height: TSizes.defaultSpace),

                  ///Search bar
                  SearchContainer(
                    text: 'Search',
                  ),
                  const SizedBox(height: TSizes.defaultSpace),

                  ///Topics
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        SectionHeading(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SectionHeading extends StatelessWidget {
  const SectionHeading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Categories',
          style: Theme.of(context)
              .textTheme
              .headline6!
              .apply(color: TColors.white),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'View All',
            style: Theme.of(context)
                .textTheme
                .bodySmall!
                .apply(color: TColors.white),
          ),
        ),
      ],
    );
  }
}
