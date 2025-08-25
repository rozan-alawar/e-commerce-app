import 'package:ecommerce_app/core/constants/app_assets.dart';

class User {
  final String image;
  final String name;
  final String jobTitle;
  final String rating;

  User({
    required this.image,
    required this.name,
    required this.jobTitle,
    required this.rating,
  });
}

final List<User> users = [
  User(
    image: ImageAssets.user1,
    name: "Mohammed Ahmed",
    jobTitle: "Beautician",
    rating: "4.6",
  ),
  User(
    image: ImageAssets.user2,
    name: "Samy Ahmed",
    jobTitle: "Beautician",
    rating: "3",
  ),
  User(
    image: ImageAssets.user3,
    name: "Noor Mohammed",
    jobTitle: "Beautician",
    rating: "4.5",
  ),
  User(
    image: ImageAssets.user4,
    name: "Hala Samy",
    jobTitle: "Beautician",
    rating: "4.5",
  ),
];
