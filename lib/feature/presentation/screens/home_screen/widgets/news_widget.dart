part of '../home_screen.dart';

class NewsWidget extends StatelessWidget {
  const NewsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 182,
      decoration: BoxDecoration(
        color: AppColors.textColorBlack,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 23, top: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 31,
                  width: 31,
                  decoration: BoxDecoration(
                    color: AppColors.textColorOrange,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: const Text('New', style: AppConstants.font700s10SF),
                ),
                const SizedBox(height: 15),
                const Text('iPhone 12', style: AppConstants.font400s11SF),
                const SizedBox(height: 15),
                const Text('Súper. Mega. Rápido.',
                    style: AppConstants.font400s11SF),
                const SizedBox(height: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.textColorWhite),
                  onPressed: () {},
                  child: const Text('Buy now',
                      style: AppConstants.font700s11SFBlack),
                ),
              ],
            ),
          ),
          Image.asset('assets/images/iphone12.png'),
        ],
      ),
    );
  }
}
