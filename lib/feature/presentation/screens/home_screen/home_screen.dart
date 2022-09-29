import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce_project/feature/presentation/bloc/ecommerce_bloc_bloc.dart';
import 'package:ecommerce_project/feature/presentation/providers/ecommerce_provider.dart';
import 'package:ecommerce_project/core/constants/appcolors.dart';
import 'package:ecommerce_project/core/constants/appconstants.dart';
import 'package:ecommerce_project/core/constants/appimages.dart';
import 'package:ecommerce_project/feature/presentation/routes/routes.dart';
import 'package:ecommerce_project/feature/presentation/widgets/bottomsheet_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:auto_route/auto_route.dart';

part '../home_screen/widgets/categories_widget.dart';
part '../home_screen/widgets/text_fields.dart';
part '../home_screen/widgets/news_widget.dart';
part '../home_screen/widgets/gridview_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<EcommerceProvider>(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.backgroundColor,
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(AppImages.location),
                        const SizedBox(width: 10),
                        const Text('Bishkek', style: AppConstants.font500s15)
                      ],
                    ),
                    trailing: IconButton(
                      icon: SvgPicture.asset(AppImages.filter),
                      onPressed: () {
                        showModalBottomSheet(
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(30),
                            ),
                          ),
                          useRootNavigator: true,
                          context: context,
                          builder: (context) => const MyBottomSheetWidget(),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 19),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text('Select category', style: AppConstants.font700s25),
                      Text('view all', style: AppConstants.font400s15Orange),
                    ],
                  ),
                  const SizedBox(height: 24),
                  const CategoriesWidget(),
                  const SizedBox(height: 35),
                  const MyTextFieldWidget(),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text('Hot sales', style: AppConstants.font700s25),
                      Text('see more', style: AppConstants.font400s15Orange),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const NewsWidget(),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text('Best seller', style: AppConstants.font700s25),
                      Text('see more', style: AppConstants.font400s15Orange),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const MyGridviewWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
