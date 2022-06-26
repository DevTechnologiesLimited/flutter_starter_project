import 'package:flutter/material.dart';
import 'package:flutter_starter_project/src/core/util/file_path.dart';
import 'package:flutter_starter_project/src/core/util/widgets/custom_switch.dart';
import 'package:flutter_starter_project/src/core/util/widgets/password_field.dart';
import 'package:flutter_starter_project/src/core/util/widgets/text_field.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    bool switchValue = false;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Hello',
          style: Theme.of(context).textTheme.headline6,
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ElevatedButton(
            onPressed: () {},
            child: Text(
              'Go to Home',
              style: Theme.of(context).textTheme.button,
            ),
          ),
          Text(
            'Heading 1',
            style: Theme.of(context).textTheme.headline1,
          ),
          Text(
            'Heading 2',
            style: Theme.of(context).textTheme.headline2,
          ),
          Text(
            'Heading 3',
            style: Theme.of(context).textTheme.headline3,
          ),
          Text(
            'Heading 4',
            style: Theme.of(context).textTheme.headline4,
          ),
          Text(
            'Heading 5',
            style: Theme.of(context).textTheme.headline5,
          ),
          Text(
            'Heading 6',
            style: Theme.of(context).textTheme.headline6,
          ),
          Text(
            'Body 1',
            style: Theme.of(context).textTheme.bodyText1,
          ),
          Text(
            'Body 2',
            style: Theme.of(context).textTheme.bodyText2,
          ),
          Text(
            'Body 2',
            style: Theme.of(context)
                .textTheme
                .subtitle1!
                .copyWith(color: Colors.amber),
          ),
          AuthTextField(
            controller: TextEditingController(),
            hintText: 'Hint Text',
            // isPassword: true,
          ),
          CustomSwitch(
            value: switchValue,
            onChanged: (value) {
              setState(() {
                print(value);
                switchValue = value;
                print(switchValue);
              });
            },
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
