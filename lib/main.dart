import 'package:ecommerce_project/feature/data/dio_settings.dart';
import 'package:ecommerce_project/feature/domain/repositories/product_repo.dart';
import 'package:ecommerce_project/feature/presentation/bloc/ecommerce_bloc_bloc.dart';
import 'package:ecommerce_project/feature/presentation/routes/routes.dart';
import 'package:ecommerce_project/feature/presentation/widgets/app_unfocuser.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'feature/presentation/providers/ecommerce_provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    const MyApp(),
  );
}

final appRouter = AppRouter();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return InitWidget(
      child: AppUnfocuser(
        child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: 'Material App',
          routeInformationParser: appRouter.defaultRouteParser(),
          routerDelegate: appRouter.delegate(),
        ),
      ),
    );
  }
}

class InitWidget extends StatelessWidget {
  const InitWidget({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(create: (context) => DioSettings()),
        RepositoryProvider(
          create: (context) => ProductRepository(
            dio: RepositoryProvider.of<DioSettings>(context).dio,
          ),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => EcommerceBlocBloc(
              productRepository:
                  RepositoryProvider.of<ProductRepository>(context),
            )..add(
                GetAllProductsEvent(),
              ),
          ),
        ],
        child: ChangeNotifierProvider(
          create: (context) => EcommerceProvider(),
          child: child,
        ),
      ),
    );
  }
}
