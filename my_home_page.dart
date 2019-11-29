import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return MyHomePageState();
  }

}

class MyHomePageState extends State<MyHomePage>{
  //create a controller for TextField
  TextEditingController _controller = TextEditingController();


  @override
  void initState() {
    super.initState();
    //add a listener
    _controller.addListener((){
      if(_controller.text.isEmpty){
          print('++++++++ now （_controller.text.isEmpty） is TRUE ++++++++');
          print(_controller.text);
          print(_controller.text.runtimeType);
      }else{
          print('-------- now （_controller.text.isEmpty） is FALSE ---------');
          print(_controller.text);
          print(_controller.text.runtimeType);
      }
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: (Text('Demo')),
      ),
      body: Center(
        child: TextField(
          controller: _controller,
          decoration: InputDecoration(
            hintText: 'type and delete and look the console'
          ),
        ),
      ),
    );
  }
}