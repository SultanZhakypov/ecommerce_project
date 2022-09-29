// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;

import '../screens/basket_screen/basket_screen.dart' as _i2;
import '../screens/detail_screen/detail_screen.dart' as _i4;
import '../screens/home_screen/home_screen.dart' as _i5;
import '../screens/liked_screen/liked_screen.dart' as _i1;
import '../screens/profile_screen/profile_screen.dart' as _i3;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    LikedScreenRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.LikedScreen(),
      );
    },
    BasketScreenRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.BasketScreen(),
      );
    },
    ProfileScreenRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.ProfileScreen(),
      );
    },
    DetailScreenRoute.name: (routeData) {
      final args = routeData.argsAs<DetailScreenRouteArgs>();
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i4.DetailScreen(
          key: args.key,
          image: args.image,
          title: args.title,
        ),
      );
    },
    HomeScreenRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.HomeScreen(),
      );
    },
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(
          LikedScreenRoute.name,
          path: '/liked',
        ),
        _i6.RouteConfig(
          BasketScreenRoute.name,
          path: '/basket',
        ),
        _i6.RouteConfig(
          ProfileScreenRoute.name,
          path: '/profile',
        ),
        _i6.RouteConfig(
          DetailScreenRoute.name,
          path: '/detail',
        ),
        _i6.RouteConfig(
          HomeScreenRoute.name,
          path: '/',
        ),
      ];
}

/// generated route for
/// [_i1.LikedScreen]
class LikedScreenRoute extends _i6.PageRouteInfo<void> {
  const LikedScreenRoute()
      : super(
          LikedScreenRoute.name,
          path: '/liked',
        );

  static const String name = 'LikedScreenRoute';
}

/// generated route for
/// [_i2.BasketScreen]
class BasketScreenRoute extends _i6.PageRouteInfo<void> {
  const BasketScreenRoute()
      : super(
          BasketScreenRoute.name,
          path: '/basket',
        );

  static const String name = 'BasketScreenRoute';
}

/// generated route for
/// [_i3.ProfileScreen]
class ProfileScreenRoute extends _i6.PageRouteInfo<void> {
  const ProfileScreenRoute()
      : super(
          ProfileScreenRoute.name,
          path: '/profile',
        );

  static const String name = 'ProfileScreenRoute';
}

/// generated route for
/// [_i4.DetailScreen]
class DetailScreenRoute extends _i6.PageRouteInfo<DetailScreenRouteArgs> {
  DetailScreenRoute({
    _i7.Key? key,
    required String image,
    required String title,
  }) : super(
          DetailScreenRoute.name,
          path: '/detail',
          args: DetailScreenRouteArgs(
            key: key,
            image: image,
            title: title,
          ),
        );

  static const String name = 'DetailScreenRoute';
}

class DetailScreenRouteArgs {
  const DetailScreenRouteArgs({
    this.key,
    required this.image,
    required this.title,
  });

  final _i7.Key? key;

  final String image;

  final String title;

  @override
  String toString() {
    return 'DetailScreenRouteArgs{key: $key, image: $image, title: $title}';
  }
}

/// generated route for
/// [_i5.HomeScreen]
class HomeScreenRoute extends _i6.PageRouteInfo<void> {
  const HomeScreenRoute()
      : super(
          HomeScreenRoute.name,
          path: '/',
        );

  static const String name = 'HomeScreenRoute';
}
