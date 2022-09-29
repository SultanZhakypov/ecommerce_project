part of '../home_screen.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<EcommerceProvider>(context);
    List categories = [
      AppImages.phones,
      AppImages.computer,
      AppImages.health,
      AppImages.books,
    ];

    List<String> categoriesNames = [
      'Phones',
      'Computer',
      'Health',
      'Books',
    ];

    return SizedBox(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
          categories.length,
          (index) => InkWell(
            onTap: () {
              vm.selectedIndex = index;
              vm.selectCategory(index);
            },
            child: Column(
              children: [
                Container(
                  height: 71,
                  width: 71,
                  decoration: BoxDecoration(
                    color: vm.selectedIndex == index
                        ? AppColors.textColorOrange
                        : AppColors.textColorWhite,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: SvgPicture.asset(
                    categories[index],
                    fit: BoxFit.scaleDown,
                    color: vm.selectedIndex == index
                        ? AppColors.textColorWhite
                        : AppColors.textColorGrey,
                  ),
                ),
                const SizedBox(
                  height: 7,
                ),
                Text(categoriesNames[index],
                    style: vm.selectedIndex == index
                        ? AppConstants.font500s12Orange
                        : AppConstants.font500s12),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
