class ChatModel{
  String username;
  String lastMessage;
  String lastMessageTime;
  String profilePicUrl;
  
  ChatModel({this.username,this.lastMessage,this.lastMessageTime,this.profilePicUrl});
}

List<ChatModel> dummyChatData =[
  new ChatModel(
      username: "Hreman Peters",
      lastMessage: "nice to meet you",
      lastMessageTime: "3:23 PM",
      profilePicUrl: "https://randomuser.me/api/portraits/med/men/9.jpg"),
  new ChatModel(
      username: "Harry Mendoza",
      lastMessage: "all good!",
      lastMessageTime: "2:12 PM",
      profilePicUrl: "https://randomuser.me/api/portraits/med/men/88.jpg"),
  new ChatModel(
      username: "Sylvia Parker",
      lastMessage: "got it! Thanks",
      lastMessageTime: "11:43 AM",
      profilePicUrl: "https://randomuser.me/api/portraits/med/women/50.jpg"),
  new ChatModel(
      username: "Nieves Gimenez",
      lastMessage: "How about that",
      lastMessageTime: "11:03 AM",
      profilePicUrl: "https://randomuser.me/api/portraits/med/women/45.jpg"),
  new ChatModel(
      username: "Maddison Williams",
      lastMessage: "No Way!",
      lastMessageTime: "10:20 AM",
      profilePicUrl: "https://randomuser.me/api/portraits/med/women/96.jpg"),
  new ChatModel(
      username: "Veeti Aro",
      lastMessage: "Nice Work, see you next week",
      lastMessageTime: "8:10 AM",
      profilePicUrl: "https://randomuser.me/api/portraits/med/men/15.jpg"),
  new ChatModel(
      username: "Josefina Flores",
      lastMessage: "thanks",
      lastMessageTime: "8:17 AM",
      profilePicUrl: "https://randomuser.me/api/portraits/med/women/52.jpg"),
  new ChatModel(
      username: "Elijag Barnes",
      lastMessage: "Good morning!",
      lastMessageTime: "7:50 AM",
      profilePicUrl: "https://randomuser.me/api/portraits/med/men/35.jpg"),
  new ChatModel(
      username: "Vendel Rodrigues",
      lastMessage: "Will call you at 5",
      lastMessageTime: "7:03 PM",
      profilePicUrl: "https://randomuser.me/api/portraits/med/men/43.jpg")
];

