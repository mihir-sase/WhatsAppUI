import 'package:hasura_connect/hasura_connect.dart';

class ChatServices{
  final String url = 'https://inspired-mite-33.hasura.app/v1/graphql';
  HasuraConnect _hasuraConnect;

  ChatServices(){
    _hasuraConnect = HasuraConnect(url);
  }

  Future createChat(username,message,time,profilePic) async{
    String docMutation = """
  mutation {
     insert_chat_table_one(object: {message: "$message", time: "$time", username: "$username",profilePic: "$profilePic"}) {
      chatId
    }
  }
""";
    return await _hasuraConnect.mutation(docMutation);
  }

  Future getChat() async{
    String docQuery="""
    query{
       chat_table {
    chatId
    message
    time
    username
  }
    }
    """;
    return await _hasuraConnect.query(docQuery);
  }
}