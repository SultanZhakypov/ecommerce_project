part of '../detail_screen.dart';

class RatingBarWidget extends StatelessWidget {
  const RatingBarWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.height * 0.6,
      width: double.maxFinite,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: AppConstants.font700s20,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: AppColors.textColorPurple,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 37,
                  width: 37,
                  child: IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      AppImages.isnotliked,
                      fit: BoxFit.scaleDown,
                      color: AppColors.textColorWhite,
                    ),
                  ),
                ),
              ],
            ),
            RatingBar.builder(
              itemSize: 22,
              initialRating: 4.5,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              ignoreGestures: true,
              itemCount: 5,
              itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
              itemBuilder: (context, _) => const Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating1) {},
            ),
            const SizedBox(height: 25),
            const MyTabbarWidget(),
          ],
        ),
      ),
    );
  }
}
