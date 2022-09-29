part of '../home_screen.dart';

class MyTextFieldWidget extends StatelessWidget {
  const MyTextFieldWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 34,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: FocusableActionDetector(
              autofocus: true,
              child: TextField(
                style: AppConstants.font400s13Grey,
                autocorrect: true,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(vertical: 5),
                  prefixIcon: SvgPicture.asset(
                    AppImages.search,
                    fit: BoxFit.scaleDown,
                  ),
                  hintText: 'Search',
                  hintStyle: AppConstants.font400s13Grey,
                  hoverColor: Colors.transparent,
                  fillColor: AppColors.textColorWhite,
                  filled: true,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 20),
          FloatingActionButton(
            backgroundColor: AppColors.textColorOrange,
            onPressed: () {},
            child: SvgPicture.asset(AppImages.scan),
          ),
        ],
      ),
    );
  }
}
