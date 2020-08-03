class CallsModel{
  String username;
  String callTime;
  bool incoming;
  bool isAudio;
  String profilePicUrl;

  CallsModel({this.username,this.callTime,this.incoming,this.isAudio,this.profilePicUrl});
}

List<CallsModel> dummyCallsData =[
  new CallsModel(
      username: "Hreman Peters",
      callTime: "Yesterday, 12:38 PM",
      incoming: true,
      isAudio: false,
      profilePicUrl: "https://randomuser.me/api/portraits/med/men/9.jpg"),
  new CallsModel(
      username: "Harry Mendoza",
      callTime: "August 1, 5:52 PM",
      incoming: false,
      isAudio: true,
      profilePicUrl: "https://randomuser.me/api/portraits/med/men/88.jpg"),
  new CallsModel(
      username: "Sylvia Parker",
      callTime: "July 27, 7:37 PM",
      incoming: true,
      isAudio: true,
      profilePicUrl: "https://randomuser.me/api/portraits/med/women/50.jpg"),
];

