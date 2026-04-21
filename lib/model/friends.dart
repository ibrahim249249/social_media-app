class Friends {
  String name;
  String? imageUrl;
  String numPosts;
  String numFollowers;
  String numFollowing;

  Friends({
    required this.imageUrl,
    required this.name,
    this.numFollowers = '',
    this.numFollowing = '',
    this.numPosts = '',
  });
}

List<Friends> favorite = [
  Friends(name: 'Ahmed', imageUrl: 'assets/images/profile/image01.jpg'),
  Friends(name: 'Saly', imageUrl: 'assets/images/profile/image02.jpg'),
  Friends(name: 'Alix', imageUrl: 'assets/images/profile/image03.jpg'),
  Friends(name: 'Sara', imageUrl: 'assets/images/profile/image04.jpg'),
  Friends(name: 'Tomas', imageUrl: 'assets/images/profile/image05.jpg'),
];
