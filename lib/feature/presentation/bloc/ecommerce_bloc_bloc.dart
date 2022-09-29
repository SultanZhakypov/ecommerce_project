import 'package:bloc/bloc.dart';
import 'package:ecommerce_project/feature/data/models/product_model.dart';
import 'package:ecommerce_project/feature/domain/repositories/product_repo.dart';
import 'package:meta/meta.dart';

part 'ecommerce_bloc_event.dart';
part 'ecommerce_bloc_state.dart';

class EcommerceBlocBloc extends Bloc<EcommerceBlocEvent, EcommerceBlocState> {
  EcommerceBlocBloc({
    required this.productRepository,
  }) : super(EcommerceBlocInitial()) {
    on<GetAllProductsEvent>((event, emit) async {
      emit(EcommerceBlocLoading());
      try {
        final result = await productRepository.getAllProducts();

        emit(EcommerceBlocSuccess(
            homeStore: result.homeStore ?? [],
            bestSeller: result.bestSeller ?? []));
      } catch (e) {
        emit(EcommerceBlocError());
      }
    });
  }
  final ProductRepository productRepository;
  List<ProductModel> allProducts = [];
}
