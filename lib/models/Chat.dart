class Chat {
  final String? name, lastMessage, image, time;
  final bool? isActive;
  Chat({this.name, this.lastMessage, this.image, this.time, this.isActive});
}

List chatsData = [
  Chat(
      name: "Le Hoang Nam",
      lastMessage: "See you again",
      image: 'assets/images/user1.jpeg',
      time: '3m ago',
      isActive: false),
  Chat(
      name: "Le Huu Phuoc",
      lastMessage: "See you again",
      image: 'assets/images/user5.png',
      time: '8m ago',
      isActive: true),
  Chat(
      name: "Lily",
      lastMessage:
          "See you again See you  again See you againagain See you againagain See you again See you again",
      image: 'assets/images/user3.jpeg',
      time: '5d ago',
      isActive: false),
  Chat(
      name: "Nguyen Nhat Cuong",
      lastMessage:
          "Hello my friend See you again again See you again again See you again",
      image: 'assets/images/user4.jpeg',
      time: '2d ago',
      isActive: true),
  Chat(
      name: "Le Hoang Nam",
      lastMessage: "Good morning",
      image: 'assets/images/user6.jpeg',
      time: '7m ago',
      isActive: false),
  Chat(
      name: "Le Hoang Nam",
      lastMessage: "See you again",
      image: 'assets/images/user1.jpeg',
      time: '3m ago',
      isActive: false),
  Chat(
      name: "Le Huu Phuoc",
      lastMessage:
          "How are you?  See you againSee you again again See you agains",
      image: 'assets/images/user2.png',
      time: '8m ago',
      isActive: true),
  Chat(
      name: "Lily",
      lastMessage: "Welcome you  again See you again",
      image: 'assets/images/user3.jpeg',
      time: '5d ago',
      isActive: false),
  Chat(
      name: "Nguyen Nhat Cuong",
      lastMessage: "See you again",
      image: 'assets/images/user4.jpeg',
      time: '2d ago',
      isActive: true),
  Chat(
      name: "Le Hoang Nam",
      lastMessage: "See you again",
      image: 'assets/images/user6.jpeg',
      time: '7m ago',
      isActive: false)
];
