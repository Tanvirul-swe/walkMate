import 'package:flutter/material.dart';
import 'package:walk_mate/services/localNotification/local_notification_helper.dart';
import 'package:walk_mate/view/getStart/get_start_page.dart';

import 'bloc/cubit/theme_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  NotificationService.initializePlatformNotifications();
  runApp(
    MultiBlocProvider(
      providers: [BlocProvider(create: (coontext) => ThemeCubit())],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    ThemeCubit theme = BlocProvider.of<ThemeCubit>(context, listen: true);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme.isDark ? ThemeData.dark() : ThemeData.light(),
      home: const GetStartPage(),
    );
  }
}
