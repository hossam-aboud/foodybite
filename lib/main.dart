import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './providers/theme_provider.dart';
import './values/constraints.dart' as cons;
import './values/variables.dart' as vars;
import 'routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<ThemeProvider>(
          create: (BuildContext context) {
            return ThemeProvider();
          },
        ),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: cons.MODE_BANNER,
      title: vars.app_name,
      theme: Provider.of<ThemeProvider>(context, listen: true).currentTheme,
      darkTheme: Provider.of<ThemeProvider>(context, listen: true).currentTheme,
      routes: Routes.navigatorRoute,
      initialRoute: Routes.initRoute,
    );
  }
}
