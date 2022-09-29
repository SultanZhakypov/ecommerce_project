part of '../detail_screen.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: SvgPicture.asset(AppImages.details),
        ),
        const SizedBox(height: 10),
        const Align(
          alignment: Alignment.topLeft,
          child: Text(
            'Select color and capacity',
            style: AppConstants.font500s15,
          ),
        ),
        const SizedBox(height: 10),
        const ButtonsProductWidget(),
      ],
    );
  }
}
