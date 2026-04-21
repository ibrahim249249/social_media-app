import 'package:social_media_app/model/friends.dart';

class Post {
  late final Friends? friend;
  late final String? imageUrl;
  late final String? timePosted;
  late final String? description;
  late final String? comments;
  late final String? shared;
  late final String? like;

  Post({
    this.imageUrl,
    this.description,
    this.friend,
    this.timePosted,
    this.comments,
    this.shared,
    this.like,
  });
}

final Friends ahmed = Friends(
  imageUrl: 'assets/images/profile/image01.jpg',
  name: 'Ahmed',
);
final Friends saly = Friends(
  name: 'Saly',
  imageUrl: 'assets/images/profile/image02.jpg',
);
final Friends alix = Friends(
  name: 'Alix',
  imageUrl: 'assets/images/profile/image03.jpg',
);
final Friends sara = Friends(
  name: 'Sara',
  imageUrl: 'assets/images/profile/image04.jpg',
);
final Friends nancy = Friends(
  name: 'Nancy',
  imageUrl: 'assets/images/profile/image06.jpg',
);
final Friends mary = Friends(
  name: 'Mary',
  imageUrl: 'assets/images/profile/image07.jpg',
);
final Friends sofia = Friends(
  name: 'Sofia',
  imageUrl: 'assets/images/profile/image08.jpg',
);
final Friends markous = Friends(
  name: 'Markous',
  imageUrl: 'assets/images/profile/image09.jpg',
);

List<Post> posts = [
  Post(
    friend: markous,
    imageUrl: 'assets/images/posts/2.jpg',
    timePosted: '5 hour ago ',
    shared: '43',
    comments: '20',
    like: '67',
    description:
        'is simle dummy text of the  printnig and tayping setting industery  ',
  ),
  Post(
    friend: sofia,
    imageUrl: 'assets/images/posts/3.jpg',
    timePosted: '3 hour ago ',
    shared: '33',
    comments: '20',
    like: '62',
    description:
        'is simle dummy text of the  printnig and tayping setting industery  ',
  ),
  Post(
    friend: saly,
    imageUrl: 'assets/images/posts/4.jpg',
    timePosted: '3 hour ago ',
    shared: '33',
    comments: '25',
    like: '49',
    description:
        'is simle dummy text of the  printnig and tayping setting industery  ',
  ),
  Post(
    friend: nancy,
    imageUrl: 'assets/images/posts/1.jpg',
    timePosted: '3 hour ago ',
    shared: '47',
    comments: '20',
    like: '67',
    description:
        'is simle dummy text of the  printnig and tayping setting industery  ',
  ),
  Post(
    friend: mary,
    imageUrl: 'assets/images/posts/3.jpg',
    timePosted: '23 hour ago ',
    shared: '33',
    comments: '20',
    like: '89',
    description:
        'is simle dummy text of the  printnig and tayping setting industery  ',
  ),
];
