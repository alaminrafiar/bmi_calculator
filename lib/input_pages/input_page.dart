import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "BMI CALCULATOR",
          style: TextStyle(color: Colors.lightGreenAccent),
        ),
        centerTitle: true,
        leading: Icon(
          Icons.view_list_outlined,
          color: Colors.lightGreenAccent,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.lightGreen,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    children: const [
                      Icon(Icons.male,size: 24,),
                      Text("MALe",style: TextStyle(
                        fontSize: 24,
                      ),),
                    ],
                  ),

                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.lightGreen,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    children: const [
                      Icon(Icons.female,size: 24,),
                      Text("FEMALE",style: TextStyle(
                        fontSize: 24,
                      ),)
                    ],
                  ),

                ),
              ),

            ],
          )
        ],
      ),
    );
  }
}
