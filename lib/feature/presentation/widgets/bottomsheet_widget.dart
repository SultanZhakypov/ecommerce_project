import 'package:ecommerce_project/core/constants/extension.dart';
import 'package:ecommerce_project/core/constants/appcolors.dart';
import 'package:ecommerce_project/core/constants/appconstants.dart';
import 'package:ecommerce_project/core/constants/appimages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyBottomSheetWidget extends StatelessWidget {
  const MyBottomSheetWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 24,
        horizontal: 44,
      ),
      height: context.height * 0.6,
      width: context.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.textColorPurple,
                ),
                onPressed: () => Navigator.of(context).pop(),
                child: const Icon(Icons.close),
              ),
              const Text('Filter options', style: AppConstants.font500s18),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.textColorOrange,
                ),
                onPressed: () {},
                child: Text(
                  'Done',
                  style: AppConstants.font500s18
                      .copyWith(color: AppColors.textColorWhite),
                ),
              ),
            ],
          ),
          const SizedBox(height: 35),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text('text', style: AppConstants.font500s18),
              SizedBox(height: 14),
              MyDropdownButtonWidget(),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 14),
                child: Text('text', style: AppConstants.font500s18),
              ),
              MyDropdownButtonWidget(),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 14),
                child: Text('text', style: AppConstants.font500s18),
              ),
              MyDropdownButtonWidget(),
            ],
          )
        ],
      ),
    );
  }
}

class MyDropdownButtonWidget extends StatefulWidget {
  const MyDropdownButtonWidget({super.key});

  @override
  State<MyDropdownButtonWidget> createState() => _MyDropdownButtonWidgetState();
}

const List<String> phones = ['Samsung', 'Iphone'];

class _MyDropdownButtonWidgetState extends State<MyDropdownButtonWidget> {
  String selectedItem = phones.first;
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          color: AppColors.textColorGrey,
          style: BorderStyle.solid,
          width: 1,
        ),
      ),
      child: DropdownButton(
        style: AppConstants.font400s18,
        icon: Padding(
          padding: const EdgeInsets.only(right: 20),
          child: SvgPicture.asset(
            AppImages.arrowDown,
            fit: BoxFit.scaleDown,
          ),
        ),
        underline: const SizedBox.shrink(),
        isExpanded: true,
        hint: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            selectedItem,
            style: const TextStyle(color: Colors.black),
          ),
        ),
        onChanged: (String? item) => setState(
          () => selectedItem = item!,
        ),
        items: phones.map<DropdownMenuItem<String>>(
          (String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          },
        ).toList(),
      ),
    );
  }
}
