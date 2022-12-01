// // import 'dart:convert';
// //
// // import 'package:fantasy_app/Screens/admin/adminScreen.dart';
// // import 'package:flutter/cupertino.dart';
// // import 'package:flutter/material.dart';
// // import 'package:flutter/rendering.dart';
// // import 'package:http/http.dart' as http;
// //
// // import 'models/RegistrationResponse.dart';
// // void main() {
// //   // runApp(MaterialApp(home: AdminScreen(),));\
// //   runApp(MyApp());
// // }
// //
// // class MyApp extends StatelessWidget {
// //   const MyApp({Key? key}) : super(key: key);
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Home();
// //   }
// // }
// // class Home extends StatefulWidget {
// //   const Home({Key? key}) : super(key: key);
// //
// //   @override
// //   State<Home> createState() => _HomeState();
// // }
// //
// // class _HomeState extends State<Home> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(home:RegisterScreen());
// //   }
// // }
// // class RegisterScreen extends StatefulWidget {
// //     RegisterScreen({Key? key}) : super(key: key);
// //   @override
// //   State<RegisterScreen> createState() => _RegisterScreenState();
// // }
// //
// // class _RegisterScreenState extends State<RegisterScreen> {
// //   late RegistrationResponse RR ;
// //   GlobalKey<FormState> formKey = GlobalKey<FormState>();
// //   TextEditingController nameController = TextEditingController();
// //   TextEditingController emailController = TextEditingController();
// //   TextEditingController passwordController = TextEditingController();
// //   TextEditingController confirmPasswordController = TextEditingController();
// //   TextEditingController phoneController = TextEditingController();
// //   Future register() async {
// //     try {
// //       final response = await http.post(Uri.parse(
// //           "https://a176-2405-201-e006-5bae-2c00-ab44-c109-3d1d.in.ngrok.io/api/auth/local/register"),
// //           body: json.encode({
// //               "username": nameController.text,
// //               "email": emailController.text,
// //               "password": passwordController.text,
// //               "phone": phoneController.text,
// //           }),
// //           headers: {
// //             "Content-Type": "application/json",
// //           }
// //       );
// //
// //       if (response.statusCode == 200){
// //         // print(response.body.toString());
// //         // print(response.body.)
// //         // print("success");
// //         // print(response.body.trim().toString());
// //         final Map parsed = json.decode(response.body);
// //         final regres = RegistrationResponse.fromJson(parsed);
// //         print(regres.roleofuser.toString());
// //         // final List parsedList = json.decode(res);
// //         //
// //         // List<SignUpResponse> list = parsedList.map((val) =>  SignUpResponse.fromJson(val)).toList();
// //         print(regres.roleofuser.toString());
// //       }
// //       else {
// //         print(response.statusCode);
// //         print(response.body.trim().toString());
// //       }
// //     } catch (e) {
// //       print(e.toString());
// //     }
// //   }
// //   void dispose() {
// //     nameController.dispose();
// //     emailController.dispose();
// //     passwordController.dispose();
// //     confirmPasswordController.dispose();
// //     phoneController.dispose();
// //     super.dispose();
// //   }
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(title: Text('Register'),),
// //       body: Padding(
// //         padding: const EdgeInsets.all(30.0),
// //         child: Container(
// //           child: Form(
// //             key: formKey,
// //             child: Scrollable(
// //               axisDirection: AxisDirection.down,
// //               viewportBuilder: (BuildContext context, ViewportOffset position) { return
// //                Column(
// //                 children: [
// //                   TextFormField(
// //                     controller: nameController,
// //                     validator: (value){
// //                       if(value!.isEmpty){
// //                         return "Please enter your name";
// //                       }
// //                       return null;
// //                     },
// //                     autovalidateMode: AutovalidateMode.onUserInteraction,
// //                     decoration: InputDecoration(
// //                       hintText: "Enter your name",
// //                       labelText: "Name",
// //                       border: OutlineInputBorder(
// //                         borderRadius: BorderRadius.circular(10),
// //                       ),
// //                     ),
// //                   ),
// //
// //                   SizedBox(height: 30,),
// //
// //                   TextFormField(
// //                     controller: emailController,
// //                     validator: (value){
// //                       if(value!.isEmpty){
// //                         return "Please enter your email";
// //                       }
// //                       return null;
// //                     },
// //                     autovalidateMode: AutovalidateMode.onUserInteraction,
// //                     decoration: InputDecoration(
// //                       hintText: "Enter your email",
// //                       labelText: "Email",
// //                       border: OutlineInputBorder(
// //                         borderRadius: BorderRadius.circular(10),
// //                       ),
// //                     ),
// //                   ),
// //
// //                   SizedBox(height: 30,),
// //
// //                   TextFormField(
// //                     controller: passwordController,
// //                     validator: (value){
// //                       if(value!.isEmpty){
// //                         return "Please enter your password";
// //                       }
// //                       return null;
// //                     },
// //                     autovalidateMode: AutovalidateMode.onUserInteraction,
// //                     decoration: InputDecoration(
// //                       hintText: "Enter your password",
// //                       labelText: "Password",
// //                       border: OutlineInputBorder(
// //                         borderRadius: BorderRadius.circular(10),
// //                       ),
// //                     ),
// //                   ),
// //
// //                   SizedBox(height: 30,),
// //
// //                   TextFormField(
// //                     controller: confirmPasswordController,
// //                     validator: (value){
// //                       if(value!.isEmpty){
// //                         return "Please enter password again";
// //                       }
// //                       return null;
// //                     },
// //                     autovalidateMode: AutovalidateMode.onUserInteraction,
// //                     decoration: InputDecoration(
// //                       hintText: "Enter confirm password",
// //                       labelText: "Confirm Password",
// //                       border: OutlineInputBorder(
// //                         borderRadius: BorderRadius.circular(10),
// //                       ),
// //                     ),
// //                   ),
// //                   SizedBox(height: 30,),
// //                   TextFormField(
// //                     keyboardType: TextInputType.number,
// //                     controller: phoneController,
// //                     validator: (value){
// //                       if(value!.isEmpty){
// //                         return "Please enter your phone number";
// //                       }
// //                       return null;
// //                     },
// //                     autovalidateMode: AutovalidateMode.onUserInteraction,
// //                     decoration: InputDecoration(
// //                       hintText: "Enter your phone",
// //                       labelText: "Phone",
// //                       border: OutlineInputBorder(
// //                         borderRadius: BorderRadius.circular(10),
// //                       ),
// //                     ),
// //                   ),
// //
// //                   SizedBox(height: 30,),
// //
// //                   TextButton(onPressed: (){
// //                     if(formKey.currentState!.validate()){
// //                       print("Name: ${nameController.text}");
// //                       print("Email: ${emailController.text}");
// //                       print("Password: ${passwordController.text}");
// //                       print("Confirm Password: ${confirmPasswordController.text}");
// //                       print("Phone: ${phoneController.text}");
// //                     register();
// //                     }
// //                   }, child: Text("Register"))
// //
// //                 ],
// //               );
// //               },
// //             ),
// //
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }
//
//
//
//
// import 'package:fantasy_app/Screens/admin/adminScreen.dart';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart'as http;
// void main()=>runApp(AdminScreen());
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home:Home()
//     );
//   }
// }
//
// class Home extends StatefulWidget {
//
//    Home({Key? key}) : super(key: key);
//
//
//   @override
//   State<Home> createState() => _HomeState();
// }
//
// class _HomeState extends State<Home> {
//   late bool isRegistered = false;
//   Future registerUser()async{
//     final response = await http.get(Uri.parse('https://29af-2405-201-e006-5bae-28fc-8e38-5d3-84da.in.ngrok.io/api/auth/local/register'));
//     if(response.statusCode==200){
//       print("success");
//       setState((){isRegistered = true;});
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: RegisterScreen(),
//     );
//   }
// }
//
// class RegisterScreen extends StatelessWidget {
//   GlobalKey _formKey  = GlobalKey();
//   const RegisterScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Form(
//       key: _formKey,
//
//     );
//   }
// }




import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:flutter/rendering.dart';
import 'package:http/http.dart' as http;
void main()=>runApp(MyApp());


class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late TextEditingController _nameController;
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  late TextEditingController _phoneController;
  void dispose(){
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _phoneController.dispose();
    super.dispose();
  }
  @override
  initState(){
    super.initState();
    _nameController = TextEditingController();
    _emailController = TextEditingController();
    _phoneController = TextEditingController();
    _passwordController = TextEditingController();
    register();
  }
  late String msg = "";
  late int statusCode;

  Future register()async{
    try{
      final response = await http.post(Uri.parse('https://29af-2405-201-e006-5bae-28fc-8e38-5d3-84da.in.ngrok.io/api/auth/local/register'),headers: {
        "Content-Type":"Application/Json"
      },
      body: jsonEncode(<String,String>{
        "identifier":"usddddeewwfdfer1",
        "username":"uddgfwwgeeedser1",
        "email":"hegbdddy@gmail.com",
        "password":"111111",
        "phone":"jvksjdskjv"
      }));
      statusCode=response.statusCode;
    if(response.statusCode==200) {
      msg="Registration Successful";
      print(response.statusCode);
      String data = response.body;
      print(response.body[0]);
      print(data);
      print(jsonDecode(data));
      return jsonDecode(data);

    }else{
      msg="registration failed";
      print(response.statusCode);
      print(response.reasonPhrase.toString());
    }
  }
  catch(e){
      print(e.toString());
  }}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Scrollable(
          viewportBuilder: (BuildContext context, ViewportOffset position) {
            return Container(
              child: Column(
                children: [
                  TextButton(
                    child: Text("click"),
                    onPressed: (){
                      register();
                    },

                  ),
                 FutureBuilder(
                    future: register(),
                    builder: (BuildContext context, snapshot) {
                      if(snapshot.hasData){
                        return Container(
                          child: Text(snapshot.data.),
                        );
                      }
                    },

                  )
                ],
              ),
            );
          },

        ),
      ),
    );
  }
}

