class BoardingModel
{
  final String image;
  final String title;
  final String body;

  BoardingModel({
    required this.title,
    required this.image,
    required this.body,
  });
}

List<BoardingModel> boarding =
[
  BoardingModel(
    image: 'assets/images/delivery.png',
    title: 'Get Food Delivery to your doorstep asap',
    body: 'We have young and professional delivery team that will bring your food as soon as possible to your doorstep',
  ),
  BoardingModel(
    image: 'assets/images/done.png',
    title: 'Buy Any Food from your favourite restaurant',
    body: 'On Board 2 Body',
  ),
  BoardingModel(
    image: 'assets/images/delivery.png',
    title: 'On Board 3 Title',
    body: 'On Board 3 Body',
  ),
];
