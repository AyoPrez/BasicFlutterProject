import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:lucha_fantasy/ui/widgets/app_bar.dart';
import 'package:provider/provider.dart';

import '../theme_manager.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeNotifier>(
      builder: (context, theme, _) => Scaffold(
        appBar: SimpleAppBar(theme: theme),
        body: Padding(
          padding: const EdgeInsets.all(80.0),
          child: Center(
            child: SizedBox(
              width: 400,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: MouseRegion(
                      child: TextField(
                        decoration: InputDecoration(
                            icon: const Icon(Icons.account_box_outlined),
                            hintText: AppLocalizations.of(context).username),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: MouseRegion(
                      child: TextField(
                        obscureText: true,
                        enableSuggestions: false,
                        autocorrect: false,
                        decoration: InputDecoration(
                            icon: const Icon(Icons.key),
                            hintText: AppLocalizations.of(context).password),
                      ),
                    ),
                  ),
                  Wrap(children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: MouseRegion(
                        child: OutlinedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, "/principal");
                            },
                            child: Text(AppLocalizations.of(context).login)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: MouseRegion(
                        child: OutlinedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, "/registro");
                            },
                            child: Text(AppLocalizations.of(context).register)),
                      ),
                    ),
                  ])
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
