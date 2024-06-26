import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled3/widgets/login_button.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body:SafeArea(child: Column(
          children: [
           const SizedBox(height: 50,),
           const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                     height: 50,
                     width: 50,
                     image: AssetImage('assets/logo.jpeg')),
                SizedBox(width: 5),
                Text('Discord', style: TextStyle(fontSize: 26, fontFamily: 'Rubik Medium', color: Colors.black54),),
              ],
            ),
           const SizedBox(height: 15,),
           const Center(
              child: Text(
                'Log in',
                style: TextStyle(
                    fontSize: 32,
                    fontFamily: 'Rubik Medium',
                    color: Colors.black26),
              ),
            ),
           const SizedBox(height: 10,),
           const Center(
              child: Text(
                'Welcome  Back',
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Rubik Regular',
                    color: Colors.black45),
              ),
            ),
           const SizedBox(height: 20,),
            Padding(
              padding:const EdgeInsets.only(left: 20, right: 20, top: 10),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Email',
                  fillColor: Colors.white,
                  filled: true,
                  prefixIcon:const Icon(CupertinoIcons.mail , color: Colors.black,),
                  focusedBorder: OutlineInputBorder(borderSide:const BorderSide(color: Colors.black),borderRadius: BorderRadius.circular(24) )
                ),
              ),
            ),
           const SizedBox(height: 20,),
            Padding(
              padding:const EdgeInsets.only(left: 20,right: 20,top: 10),
              child: TextFormField(
                decoration:InputDecoration(
                    hintText: 'Password',
                    fillColor: Colors.white,
                    filled: true,
                    prefixIcon:const Icon(CupertinoIcons.padlock_solid , color: Colors.black,),
                    suffixIcon:const Icon(Icons.visibility_off , color: Colors.black,),
                    focusedBorder: OutlineInputBorder(borderSide:const BorderSide(color: Colors.black),borderRadius: BorderRadius.circular(24) )


                ),
              ),
            ),
           const SizedBox(height: 350,),
           const Login(),
           const Row(
               mainAxisAlignment: MainAxisAlignment.center,
                children: [Center(
              child: Text(
                'Don\'t have an Account?',
                style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Rubik Regular',
                    color: Colors.black),
              ),
            ),
                  TextButton(onPressed: null, child: Text('Sign up',style: TextStyle(color: Colors.blue),))
                  ,]

            )
          ],
        ),
      )),
    );
  }
}
