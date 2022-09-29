import 'package:ecommerce_project/feature/presentation/providers/ecommerce_provider.dart';
import 'package:ecommerce_project/core/constants/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ecommerce_project/core/constants/appimages.dart';
import 'package:flutter_svg/flutter_svg.dart';

part 'home_screen/widgets/bottomnavbar_widget.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<EcommerceProvider>(context);
    return Scaffold(
      body: vm.screens[vm.currentIndex],
      bottomNavigationBar: const BottomNavBarWidget(),
    );
  }
}
