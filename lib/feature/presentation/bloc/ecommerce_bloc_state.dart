part of 'ecommerce_bloc_bloc.dart';

@immutable
abstract class EcommerceBlocState {}

class EcommerceBlocInitial extends EcommerceBlocState {}

class EcommerceBlocLoading extends EcommerceBlocState {}

class EcommerceBlocSuccess extends EcommerceBlocState {
  final List<HomeStore> homeStore;
  final List<BestSeller> bestSeller;

  EcommerceBlocSuccess({required this.homeStore, required this.bestSeller});
}

class EcommerceBlocError extends EcommerceBlocState {}
