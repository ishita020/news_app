import 'package:dio/dio.dart';
import 'package:newsapp/Apiclient/apiclient.dart';
import 'package:newsapp/model/info.dart';

class InfoServices{
  ApiClient apiClient=ApiClient();
  Future<List<Info>> getInfo() async{
    Response response=await apiClient.get('https://newsapi.org/v2/everything?domains=wsj.com&apiKey=a69f71b1fa0c40f7aeb60c862becfaa8');
    print("Response is");
    print(response.data);
    print(response.data.runtimeType);
    List<dynamic> list=response.data["articles"];
    List<Info> info=list.map((e) => Info.fromJSON(e)).toList();
    print(info);
    return info;
  }
}