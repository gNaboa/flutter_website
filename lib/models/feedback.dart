import 'dart:ui';

class FeedBack {
  final String name, userPic, review;
  final int id;
  final Color color;

  FeedBack({this.id, this.name, this.review, this.userPic, this.color});
}

List<FeedBack> feeds = [
  FeedBack(
      id: 1,
      name: "Sherlock Holmes",
      userPic: "images/people.png",
      color: Color(0x0FFFFF3DD),
      review:
          "\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis purus justo, commodo non elit nec, feugiat commodo quam.\" "),
  FeedBack(
      id: 1,
      name: "Shakespare",
      userPic: "images/people.png",
      color: Color(0xFFD9FFFC),
      review:
          "\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis purus justo, commodo non elit nec, feugiat commodo quam.\""),
  FeedBack(
      id: 1,
      name: "Jonh Marston",
      userPic: "images/people.png",
      color: Color(0xFFFFE0E0),
      review:
          "\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis purus justo, commodo non elit nec, feugiat commodo quam.\"")
];
