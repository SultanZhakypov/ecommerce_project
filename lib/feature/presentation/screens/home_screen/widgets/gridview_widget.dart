part of '../home_screen.dart';

class MyGridviewWidget extends StatelessWidget {
  const MyGridviewWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<EcommerceProvider>(context);
    return BlocBuilder<EcommerceBlocBloc, EcommerceBlocState>(
      builder: (context, state) {
        if (state is EcommerceBlocSuccess) {
          return GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: 14,
              crossAxisSpacing: 14,
              crossAxisCount: 2,
              childAspectRatio: 0.85,
            ),
            itemCount: 4,
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                onTap: (() => context.router.push(
                      DetailScreenRoute(
                        image: state.bestSeller[index].picture.toString(),
                        title: state.bestSeller[index].title.toString(),
                      ),
                    )),
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.textColorWhite,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.topRight,
                          child: SizedBox(
                            height: 25,
                            child: FloatingActionButton(
                              backgroundColor: AppColors.textColorWhite,
                              onPressed: () {
                                vm.isliked();
                              },
                              child: vm.isLiked
                                  ? SvgPicture.asset(
                                      AppImages.isliked,
                                    )
                                  : SvgPicture.asset(
                                      AppImages.isnotliked,
                                    ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: CachedNetworkImage(
                            placeholder: (context, url) => const Center(
                              child: SpinKitCircle(
                                color: AppColors.textColorPurple,
                                size: 25,
                              ),
                            ),
                            fit: BoxFit.cover,
                            imageUrl:
                                state.bestSeller[index].picture.toString(),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            Text(
                              state.bestSeller[index].priceWithoutDiscount
                                  .toString(),
                              style: AppConstants.font700s17,
                            ),
                            const SizedBox(width: 10),
                            Text(
                              '\$ ${state.bestSeller[index].discountPrice.toString()}',
                              style: AppConstants.font500s10Grey.copyWith(
                                decoration: TextDecoration.lineThrough,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 5),
                        Text(
                          state.bestSeller[index].title.toString(),
                          style: AppConstants.font400s10,
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        }
        if (state is EcommerceBlocError) {
          return const Center(
            child: Text(
              'Нету подключения к интернету',
              style: AppConstants.font500s15,
            ),
          );
        }
        return const Center(
          child: SpinKitCircle(
            color: AppColors.textColorPurple,
            size: 30,
          ),
        );
      },
    );
  }
}
