import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/device/device_utility.dart';
import '../../../../utils/helpers/helper_functions.dart';

class SearchContainer extends StatelessWidget {
  const SearchContainer({
    super.key, required this.text, this.icon = Iconsax.search_normal, this.showBackground = true, this.showBorder = true,
  });
  final String text ;
  final IconData? icon;
  final bool showBackground,showBorder;
  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace),
      child: Container(
        width: TDeviceUtils.getScreenWidth(context) ,
        padding: const EdgeInsets.all(TSizes.md),
        decoration: BoxDecoration(
          color: showBackground ? TColors.light :  Colors.transparent,
          borderRadius: BorderRadius.circular(TSizes.cardRadiusLg),
          border:showBorder ? Border.all(color: TColors.darkerGrey.withOpacity(0.3)) : null,
        ),
        child: Row(
          children: [
            Icon(icon, color: TColors.darkerGrey),
            const SizedBox(width: TSizes.spaceBtwItems),
            Text(text, style: Theme.of(context).textTheme.bodySmall!.apply(color: TColors.darkGrey)),
          ],
        ),
      ),
    );
  }
}
