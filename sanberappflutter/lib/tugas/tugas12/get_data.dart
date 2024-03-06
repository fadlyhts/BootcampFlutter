import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:sanberappflutter/tugas/tugas12/get_detail_screen.dart';

class GetDataScreen extends StatefulWidget {
  const GetDataScreen({Key? key}) : super(key: key);

  @override
  State<GetDataScreen> createState() => _GetDataScreenState();
}

class _GetDataScreenState extends State<GetDataScreen> {
  final String url = 'https://reqres.in/api/users?page=2';
  List? data;

  @override
  void initState() {
    _getRefreshData();
    super.initState();
  }

  Future<void> _getRefreshData() async{
      this.getJsonData(context);
  }

  Future<void> getJsonData(BuildContext context) async {
    var response =
        await http.get(Uri.parse(url), headers: {"accept": "application/json"});
    print(response.body);
    setState(() {
      var converDataToJson = jsonDecode(response.body);
      data = converDataToJson['data'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Get data api reqres'),
      ),
      body: RefreshIndicator(
        onRefresh: _fetchData,
        child: data == null
        ? Center(child : CircularProgressIndicator()
        : ListView.builder()
          future: data,
          builder:
              (BuildContext context, AsyncSnapshot<List<Data>> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              print(snapshot.error);
              return Center(child: Text('Error'));
            } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
              return Center(child: Text('Empty Data'));
            } else {
              return ListView.builder(
                itemCount:
                    snapshot.data == null ? 0 : snapshot.data!.length,
                itemBuilder:
                    (BuildContext context, int index) => Padding(
                  padding:
                      EdgeInsets.all(16.0),
                  child: Column(
                    children:[
                      GestureDetector(
                        onTapUp:(e){
                          Navigator.push(context,
                            MaterialPageRoute(builder:(context)=>DetailUserDataScreen(data:snapshot.data![index])),
                          );
                        },
                        child : Padding (
                          padding : EdgeInsets.all(16.0),
                          child : Row (
                            children:[
                              ClipRRect (
                                borderRadius : BorderRadius.circular(100),
                                child : Image.network (
                                  snapshot.data![index]['avatar'],
                                  height :80,
                                  width :80,
                                ),
                              ),
                              SizedBox(width: 16.0),
                              Text(
                                snapshot.data![index]['first_name'] + ' ' + snapshot.data![index]['last_name'],
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
