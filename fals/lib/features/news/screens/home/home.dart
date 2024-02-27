import 'package:fals/features/news/screens/home/widgets/home_appbar.dart';
import 'package:fals/utils/constants/image_strings.dart';
import 'package:fals/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/image_text_widgets/vertical_image_text.dart';
import '../../../../common/widgets/texts/section_heading.dart';

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
                        /// Heading
                        SectionHeading(
                          title: 'Topics',
                          showActionButton: false,
                        ),
                        const SizedBox(height: TSizes.spaceBtwItems),

                        /// Topics
                        SizedBox(
                          height: 100,
                          child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: 6,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (_, index) {
                              return VerticalImageText(
                                image: TImages.user,
                                title: 'Politics',
                                onTap: () {},
                              );
                            },
                          ),
                        ),
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
