class StatusModel{
  String username;
  String uploadTime;
  String profilePicUrl;

  StatusModel({this.username,this.uploadTime,this.profilePicUrl});
}

List<StatusModel> dummyStatusData =[
  new StatusModel(
      username: "Josefina Flores",
      uploadTime: "Today, 2:03 PM",
      profilePicUrl: "https://randomuser.me/api/portraits/med/women/52.jpg"),
  new StatusModel(
      username: "Elijag Barnes",
      uploadTime: "Yesterday, 10:07 PM",
      profilePicUrl: "https://randomuser.me/api/portraits/med/men/35.jpg"),
  new StatusModel(
      username: "Vendel Rodrigues",
      uploadTime: "Yesterday, 8:18 PM",
      profilePicUrl: "https://randomuser.me/api/portraits/med/men/43.jpg")
];

