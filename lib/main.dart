import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:share_example/widget/share_files_widget.dart';
import 'package:share_example/widget/share_text_widget.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'Share Texts & Files';

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(
          primarySwatch: Colors.teal,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          scaffoldBackgroundColor: Colors.black,
        ),
        home: MainPage(),
      );
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int index = 0;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(MyApp.title),
        ),
        bottomNavigationBar: buildBottomBar(),
        body: buildPages(),
      );

  Widget buildBottomBar() => BottomNavigationBar(
        backgroundColor: Theme.of(context).primaryColor,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,
        currentIndex: index,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.link),
            label: 'Share text',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.file_copy),
            label: 'Share files',
          ),
        ],
        onTap: (int index) => setState(() => this.index = index),
      );

  Widget buildPages() {
    switch (index) {
      case 0:
        return ShareTextWidget();
      case 1:
        return ShareFilesWidget();
      default:
        return Container();
    }
  }
}
