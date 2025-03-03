import 'package:flutter/material.dart';
import 'package:gogo_app_design_system/gogo_app_design_system.dart';
import 'package:gogo_app_design_system/src/component/textField/gogo_text_field.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flooding Design system'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Form(
            key: formKey,
            child: Column(
              spacing: 10,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GogoIcons.arcade(),
                GogoTextField(
                  textFieldState: GogoTextFieldState.search,
                  controller: TextEditingController(),
                  onEditingComplete: () {},
                  hintText: '검색할 학생을 입력해주세요',
                ),
                GogoTextField(
                  textFieldState: GogoTextFieldState.basic,
                  controller: TextEditingController(),
                  hintText: '아무거나',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
