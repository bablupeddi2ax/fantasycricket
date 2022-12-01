import 'package:flutter/material.dart';

class AdminScreen extends StatefulWidget {
  const AdminScreen({Key? key}) : super(key: key);

  @override
  State<AdminScreen> createState() => _AdminScreenState();
}

class _AdminScreenState extends State<AdminScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('hello'),
        ),
        body:  Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children:[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height*0.15,
                    width: MediaQuery.of(context).size.width*0.45,
                    decoration: BoxDecoration(
                      boxShadow: [
                        const BoxShadow(
                          color: Colors.black,
                        ),
                        const BoxShadow(
                          color: Colors.white
                        ),
                      ],
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.black
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height*0.15,
                    width: MediaQuery.of(context).size.width*0.45,
                    decoration: BoxDecoration(
                        boxShadow: [
                          const BoxShadow(
                            color: Colors.black,
                          ),
                          const BoxShadow(
                              color: Colors.white
                          ),
                        ],
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.black
                    ),
                  ),
                ],
            ),
              ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height*0.15,
                    width: MediaQuery.of(context).size.width*0.45,
                    decoration: BoxDecoration(
                        boxShadow: [
                          const BoxShadow(
                            color: Colors.black,
                          ),
                          const BoxShadow(
                              color: Colors.white
                          ),
                        ],
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.black
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height*0.15,
                    width: MediaQuery.of(context).size.width*0.45,
                    decoration: BoxDecoration(
                        boxShadow: [
                          const BoxShadow(
                            color: Colors.black,
                          ),
                          const BoxShadow(
                              color: Colors.white
                          ),
                        ],
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.black
                    ),
                  ),
                ],
              ),
            ),
        ],
          ),
        ),
      ),
    );
  }
}
