part of '../../main_screen.dart';

class BottomNavBarWidget extends StatelessWidget {
  const BottomNavBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<EcommerceProvider>(context);

    return Container(
      height: 70,
      decoration: BoxDecoration(
        color: AppColors.textColorPurple,
        borderRadius: BorderRadius.circular(25),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BottomNavigationBar(
          showSelectedLabels: false,
          onTap: vm.onTapped,
          currentIndex: vm.currentIndex,
          items: [
            BottomNavigationBarItem(
              backgroundColor: AppColors.textColorPurple,
              icon: SvgPicture.asset(AppImages.explorer),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(AppImages.basket),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(AppImages.liked),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(AppImages.profile),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
