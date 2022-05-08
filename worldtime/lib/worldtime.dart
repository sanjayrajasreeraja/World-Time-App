import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class WorldTime {
  WorldTime({required this.url});
  final String url;
  late String time;

  @override
  Future<String> getWorldtime() async {
    var response =
        await http.get(Uri.parse("http://worldtimeapi.org/api/timezone/$url"));

    Map data = jsonDecode(response.body);

    String datetime = data["datetime"];
    String offset = data['utc_offset'].substring(1, 3);

    DateTime now = DateTime.parse(datetime);
    now = now.add(Duration(hours: int.parse(offset)));

    time = now.toString();
    return time;
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
