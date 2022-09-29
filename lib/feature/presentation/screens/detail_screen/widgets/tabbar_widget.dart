part of '../detail_screen.dart';

class MyTabbarWidget extends StatelessWidget {
  final List<Widget> tabs = const [
    Tab(text: 'Shop'),
    Tab(text: 'Details'),
    Tab(text: 'Features'),
  ];

  const MyTabbarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: DefaultTabController(
        length: 3,
        child: Column(
          children: [
            SizedBox(
              width: context.width,
              child: TabBar(
                labelStyle: AppConstants.font700s17,
                labelColor: AppColors.textColorPurple,
                indicator: const UnderlineTabIndicator(
                  borderSide: BorderSide(
                    color: AppColors.textColorOrange,
                    width: 3,
                  ),
                  insets: EdgeInsets.symmetric(horizontal: 20),
                ),
                unselectedLabelColor: Colors.grey,
                unselectedLabelStyle: AppConstants.font400s15Orange,
                tabs: tabs,
              ),
            ),
            const SizedBox(height: 18),
            const Expanded(
              child: TabBarView(
                children: [
                  ProductWidget(),
                  Center(child: Text('Details Body')),
                  Center(child: Text('Features Body')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
