import 'package:flutter/material.dart';
import 'package:untitled1/MyListDetail.dart';
import 'MyListModel.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DOR APP test',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _incrementCounter() {
    setState(() {});
  }

  List<MyListModel> listData = List.generate(
      5, (index) => MyListModel(index.toString(), "desc")
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 기본적인 앱에서 디자인적인 뼈대를 구성하는 위젯
        appBar: AppBar(
          title: const Text('DOR App'),

        ),
        body: ListView.builder(
            itemCount: 5,
            itemBuilder: (context,index){
              return Card(
                child: ListTile(
                  title: Text(listData[index].name),
                  onTap: (){
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context)=>
                            MyListDetail()));
                  },
                ),
              );
            })
    );
  }
}