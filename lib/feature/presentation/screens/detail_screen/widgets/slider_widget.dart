part of '../detail_screen.dart';

class SliderWidget extends StatelessWidget {
  const SliderWidget({
    Key? key,
    required this.image,
  }) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: 3,
      itemBuilder: (context, index, _) => Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        margin: const EdgeInsets.symmetric(horizontal: 12),
        alignment: Alignment.center,
        child: Hero(
          tag: index,
          child: CachedNetworkImage(
            fit: BoxFit.cover,
            imageUrl: image,
          ),
        ),
      ),
      options: CarouselOptions(
        height: 300,
        aspectRatio: 5.0,
        initialPage: 0,
        viewportFraction: 0.74,
        enlargeCenterPage: true,
        enableInfiniteScroll: true,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
