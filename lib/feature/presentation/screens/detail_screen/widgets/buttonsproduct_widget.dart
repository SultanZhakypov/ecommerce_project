part of '../detail_screen.dart';

class ButtonsProductWidget extends StatefulWidget {
  const ButtonsProductWidget({Key? key}) : super(key: key);

  @override
  State<ButtonsProductWidget> createState() => _ButtonsProductWidgetState();
}

class _ButtonsProductWidgetState extends State<ButtonsProductWidget> {
  int selectedButtonColor = 0;
  int selectedButtonNum = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
              child: FloatingActionButton(
                heroTag: 1,
                backgroundColor: AppColors.textColorPurple,
                elevation: 0,
                foregroundColor: Colors.white,
                onPressed: () => setState(() {
                  selectedButtonColor = 0;
                }),
                child: selectedButtonColor == 0
                    ? const Icon(
                        Icons.check_outlined,
                      )
                    : const SizedBox(),
              ),
            ),
            SizedBox(
              height: 40,
              child: FloatingActionButton(
                heroTag: 2,
                backgroundColor: AppColors.textColorOrange,
                elevation: 0,
                foregroundColor: Colors.white,
                onPressed: () => setState(() {
                  selectedButtonColor = 1;
                }),
                child: selectedButtonColor == 1
                    ? const Icon(Icons.check_outlined)
                    : const SizedBox(),
              ),
            ),
            SizedBox(width: context.width * 0.1),
            ElevatedButton(
              onPressed: () => {
                setState(() {
                  selectedButtonNum = 0;
                })
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: selectedButtonNum == 0
                    ? AppColors.textColorOrange
                    : AppColors.textColorGrey,
                elevation: 0,
                padding: const EdgeInsets.all(7),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Text(
                '128GB',
                style: selectedButtonNum == 0
                    ? AppConstants.font700s13White
                    : AppConstants.font700s11SFBlack,
              ),
            ),
            const SizedBox(width: 20),
            ElevatedButton(
              onPressed: () => {
                setState(() {
                  selectedButtonNum = 1;
                })
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: selectedButtonNum == 1
                    ? AppColors.textColorOrange
                    : AppColors.textColorGrey,
                elevation: 0,
                padding: const EdgeInsets.all(5),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Text(
                '256GB',
                style: selectedButtonNum == 1
                    ? AppConstants.font700s13White
                    : AppConstants.font700s11SFBlack,
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        SizedBox(
          height: 54,
          width: context.width,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.textColorOrange,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 60),
            ),
            child: const Text('Add to Cart  \$1500',
                style: AppConstants.font700s20White),
          ),
        ),
      ],
    );
  }
}
