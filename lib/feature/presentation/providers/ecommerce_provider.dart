import 'package:ecommerce_project/feature/domain/repositories/product_repo.dart';
import 'package:ecommerce_project/feature/presentation/screens/liked_screen/liked_screen.dart';
import 'package:ecommerce_project/feature/presentation/screens/profile_screen/profile_screen.dart';
import 'package:flutter/cupertino.dart';
import '../screens/basket_screen/basket_screen.dart';
import '../screens/detail_screen/detail_screen.dart';
import '../screens/home_screen/home_screen.dart';

class EcommerceProvider extends ChangeNotifier {
  bool isLiked = false;
  int selectedIndex = 0;
  int currentIndex = 0;

  List screens = [
    const HomeScreen(),
    const BasketScreen(),
    const LikedScreen(),
    const ProfileScreen(),
  ];

  

  void isliked() {
    isLiked = !isLiked;
    notifyListeners();
  }

  void selectCategory(int index) {
    selectedIndex = index;
    notifyListeners();
  }

  void onTapped(int index) {
    currentIndex = index;
    notifyListeners();
  }
}
