import 'package:firebase_chat_study/pages/login_page.dart';
import 'package:firebase_chat_study/pages/register_page.dart';
import 'package:flutter/material.dart';

class LoginOrRegister extends StatefulWidget {
  const LoginOrRegister({super.key});

  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {

  //초기에 로그인 페이지 보여줌
  bool showLoginPage = true;

  //로그인, 회원가입 토글
  void togglePages(){
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }
  @override
  Widget build(BuildContext context) {
    if(showLoginPage){
      return LoginPage(
        onTap: togglePages,
      );
    } else{
      return RegisterPage(
        onTap: togglePages,
      );
    }
  }
}