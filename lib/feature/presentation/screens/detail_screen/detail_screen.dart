import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_project/core/constants/appconstants.dart';
import 'package:ecommerce_project/core/constants/appimages.dart';
import 'package:ecommerce_project/core/constants/extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../core/constants/appcolors.dart';
import 'package:auto_route/auto_route.dart';

part 'widgets/slider_widget.dart';
part 'widgets/ratingbar_widget.dart';
part 'widgets/buttonsproduct_widget.dart';
part 'widgets/product_widget.dart';
part 'widgets/tabbar_widget.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, required this.image, required this.title});
  final String image;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 42,
                vertical: 25,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.textColorPurple,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: 37,
                    width: 37,
                    child: IconButton(
                      onPressed: () {
                        context.router.pop();
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        color: AppColors.textColorWhite,
                      ),
                    ),
                  ),
                  const Text(
                    'Product Details',
                    style: AppConstants.font500s18,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.textColorOrange,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: 37,
                    width: 37,
                    child: IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        AppImages.basket,
                        fit: BoxFit.scaleDown,
                        color: AppColors.textColorWhite,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 31),
            SliderWidget(
              image: image,
            ),
            const SizedBox(height: 7),
            RatingBarWidget(
              title: title,
            )
          ]),
        ),
      ),
    );
  }
}
