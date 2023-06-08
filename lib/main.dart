import 'package:airbnb_passport/models/mocks.dart';
import 'package:airbnb_passport/theme/theme.dart';
import 'package:airbnb_passport/widgets/widgets.dart';
import 'package:flutter/material.dart';

void main() {
  // uncomment the next line and import package:flutter/scheduler.dart to slow down animations
  // timeDilation = 5;

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: false,
        textTheme: DemoTextStyles.textTheme,
        dividerTheme: const DividerThemeData(
          thickness: 1,
          color: DemoColors.divider,
        ),
        scaffoldBackgroundColor: DemoColors.white,
      ),
      home: Scaffold(
        body: ResponsiveLayoutBuilder(
          extraSmall: (context, child) {
            return ApartmentsList(
              itemCount: apartments.length,
              itemBuilder: (context, index) {
                return FocusDetector.mobile(
                  key: ValueKey(apartments[index].host.id),
                  builder: (context, isFocused) {
                    return ApartmentCard(
                      apartment: apartments[index],
                      isFocused: isFocused,
                    );
                  },
                );
              },
            );
          },
          small: (context, child) {
            return ApartmentsGrid(
              crossAxisCount: 2,
              itemCount: apartments.length,
              itemBuilder: (context, index) {
                return FocusDetector.desktop(
                  builder: (context, isFocused) {
                    return ApartmentCard(
                      apartment: apartments[index],
                      isFocused: isFocused,
                    );
                  },
                );
              },
            );
          },
          medium: (context, child) {
            return ApartmentsGrid(
              crossAxisCount: 3,
              itemCount: apartments.length,
              itemBuilder: (context, index) {
                return FocusDetector.desktop(
                  builder: (context, isFocused) {
                    return ApartmentCard(
                      apartment: apartments[index],
                      isFocused: isFocused,
                    );
                  },
                );
              },
            );
          },
          large: (context, child) {
            return ApartmentsGrid(
              crossAxisCount: 4,
              itemCount: apartments.length,
              itemBuilder: (context, index) {
                return FocusDetector.desktop(
                  builder: (context, isFocused) {
                    return ApartmentCard(
                      apartment: apartments[index],
                      isFocused: isFocused,
                    );
                  },
                );
              },
            );
          },
          extraLarge: (context, child) {
            return ApartmentsGrid(
              crossAxisCount: 5,
              itemCount: apartments.length,
              itemBuilder: (context, index) {
                return FocusDetector.desktop(
                  builder: (context, isFocused) {
                    return ApartmentCard(
                      apartment: apartments[index],
                      isFocused: isFocused,
                    );
                  },
                );
              },
            );
          },
        ),
      ),
    );
  }
}
