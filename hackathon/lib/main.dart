import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hackathon/core/init/theme/theme.dart';
import 'package:hackathon/core/init/theme/theme_purple.dart';

import 'package:hackathon/features/homepage/view/home_page_view.dart';
import 'package:hackathon/features/landing/landing_screen.dart';
import 'package:hackathon/features/login/login_screen.dart';
import 'package:hackathon/features/messanger/messanger_view.dart';
import 'package:hackathon/features/navbar/navbar.dart';
import 'package:hackathon/features/onboarding/onboarding_view.dart';
import 'package:hackathon/features/profile/view/profile_view.dart';
import 'package:hackathon/features/signup/signup_screen.dart';

import 'features/createEvent/create_event.dart';
import 'features/eventDetail/view/event_detail_view.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: ThemePurple().theme,
      debugShowCheckedModeBanner: false,
      initialRoute: OnBoardingView.routeName,
      routes: {
        OnBoardingView.routeName: (ctx) => const OnBoardingView(),
        LandingScreen.routeName: (ctx) => const LandingScreen(),
        HomePageView.routeName: (ctx) => const HomePageView(),
        EventDetailView.routeName: (ctx) => const EventDetailView(),
        CreateEvent.routeName: (ctx) => const CreateEvent(),
        MessangerView.routeName: (ctx) => const MessangerView(),
        ProfileView.routeName: (ctx) => const ProfileView(),
        LoginScreen.routeName: (ctx) => const LoginScreen(),
        SignUpScreen.routeName: (ctx) => const SignUpScreen(),
      },
    );
  }
}

//**
//*Anasayfa
    //  Katagori (->)
    //  Anasayfa da etkinlikler (->) Etkinlik detaya gidecek
    //  Etkinlik detay  commnet(buton) -> comments (->) yorum yapılacak
    //  
    //  profil çıkış butonu (->) Event eklemek için gerekli  Gökhan 
    //  chat static   
       
    //  
    // 
//  
//
//
//
// */