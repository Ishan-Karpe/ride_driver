import 'package:flutter/material.dart';

void main() async
{
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MyApp(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Ride Driver',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(appBar: AppBar(title: const Text("Welcome to the Rider Drivers App!"))),
      ),
    ),
  );
}

class MyApp extends StatefulWidget
{
  final Widget? child;

  const MyApp({this.child});

  static void restartApp(BuildContext context)
  {
    context.findAncestorStateOfType<_MyAppState>()!.restartApp();
  }

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>
{
  Key key = UniqueKey();
  void restartApp()
  {
    setState(() {
      key = UniqueKey();
    });
  }

  @override
  Widget build(BuildContext context) {
    return KeyedSubtree(key: key, child: widget.child!);
  }
}