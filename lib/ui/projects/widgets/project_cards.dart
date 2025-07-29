import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfoliosite/domain/project_model.dart';
import 'package:portfoliosite/services/link_launcher.dart';
import 'package:portfoliosite/ui/core/localization/applocalization.dart';
import 'package:portfoliosite/ui/core/themes/dimens.dart';

class ProjectCards extends StatelessWidget {
  const ProjectCards({required this.project, super.key});

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(project.imageUrl),
            Text(
              project.title,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            SizedBox(height: Dimens.of(context).paddingScreenVertical),
            Text(
              project.description,
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
            ElevatedButton.icon(
              onPressed: () {
                LinkLauncher.openSite(project.projectUrl);
              },
              icon: const Icon(FontAwesomeIcons.github),
              label: Text(Applocalization.of(context).visitProject),
            ),
          ],
        ),
      ),
    );
  }
}
