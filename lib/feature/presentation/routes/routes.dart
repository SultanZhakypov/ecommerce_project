import 'package:auto_route/auto_route.dart';
import 'package:ecommerce_project/feature/presentation/screens/basket_screen/basket_screen.dart';
import 'package:ecommerce_project/feature/presentation/screens/detail_screen/detail_screen.dart';
import 'package:ecommerce_project/feature/presentation/screens/home_screen/home_screen.dart';
import 'package:ecommerce_project/feature/presentation/screens/liked_screen/liked_screen.dart';
import 'package:ecommerce_project/feature/presentation/screens/profile_screen/profile_screen.dart';

export 'routes.gr.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(
      page: LikedScreen,
      path: '/liked',
    ),
    AutoRoute(
      page: BasketScreen,
      path: '/basket',
    ),
    AutoRoute(
      page: ProfileScreen,
      path: '/profile',
    ),
    AutoRoute(
      page: DetailScreen,
      path: '/detail',
    ),
    AutoRoute(
      initial: true,
      page: HomeScreen,
      path: '/',
    ),
  ],
)
class $AppRouter {}
