import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:portfoliosite/navigation/routes.dart';
import 'package:portfoliosite/services/link_launcher.dart';
import 'package:portfoliosite/ui/core/localization/applocalization.dart';
import 'package:portfoliosite/ui/core/themes/dimens.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          Applocalization.of(context).nameShort,
          style: Theme.of(
            context,
          ).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.bold),
        ),
        centerTitle: false,
        actions: [
          TextButton.icon(
            onPressed: () {
              context.go(Routes.projects);
            },
            label: Text(Applocalization.of(context).projects),
            icon: const Icon(CupertinoIcons.folder),
          ),
          TextButton.icon(
            onPressed: () {
              context.go(Routes.privacyPolicies);
            },
            label: Text(Applocalization.of(context).privacy),
            icon: const Icon(CupertinoIcons.shield),
          ),
        ],
      ),
      body: Container(
        padding: Dimens.paddingScreen(context),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage('assets/images/profile.jpg'),
              ),
              SizedBox(height: Dimens.of(context).paddingScreenVertical),

              RichText(
                text: TextSpan(
                  text: Applocalization.of(context).name,
                  style: Theme.of(
                    context,
                  ).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.w100),
                  children: [
                    TextSpan(
                      text: Applocalization.of(context).tagline,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: Dimens.of(context).paddingScreenVertical),
              Text(
                Applocalization.of(context).bio,
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: Dimens.of(context).paddingScreenVertical),
              Text(
                Applocalization.of(context).checkoutMyProjects,
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: Dimens.of(context).paddingScreenVertical),
              ElevatedButton.icon(
                onPressed: () {
                  context.go(Routes.projects);
                },
                icon: const Icon(CupertinoIcons.folder),
                label: Text(Applocalization.of(context).projects),
              ),
              //Spacer(),
              SizedBox(height: Dimens.of(context).paddingScreenVertical),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      LinkLauncher.openSite(
                        "https://github.com/DanielDicksonDillimono/",
                      );
                    },
                    icon: Icon(FontAwesomeIcons.github),
                  ),
                  IconButton(
                    onPressed: () {
                      LinkLauncher.openSite(
                        'https://www.linkedin.com/in/daniel-dickson-dillimono',
                      );
                    },
                    icon: Icon(FontAwesomeIcons.linkedin),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
