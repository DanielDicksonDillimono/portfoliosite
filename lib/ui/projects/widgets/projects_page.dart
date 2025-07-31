import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:portfoliosite/ui/core/localization/applocalization.dart';
import 'package:portfoliosite/ui/core/themes/dimens.dart';
import 'package:portfoliosite/ui/projects/models/projects_page_viewmodel.dart';
import 'package:portfoliosite/ui/projects/widgets/project_cards.dart';

class ProjectsPage extends StatelessWidget {
  ProjectsPage({super.key});

  final ProjectsPageViewmodel _viewModel = ProjectsPageViewmodel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(CupertinoIcons.home),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: Dimens.paddingScreen(context),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(height: Dimens.of(context).paddingScreenVertical),
              Text(
                Applocalization.of(context).projects,
                style: Theme.of(context).textTheme.displaySmall,
              ),

              SizedBox(height: Dimens.of(context).paddingScreenVertical),
              Text(
                Applocalization.of(context).projectDescription,
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.center,
              ),
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _viewModel.projects.length,
                  itemBuilder: (context, index) {
                    final project = _viewModel.projects[index];
                    return Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: Dimens.of(context).paddingScreenVertical,
                        horizontal: Dimens.of(context).paddingScreenHorizontal,
                      ),
                      child: ProjectCards(project: project),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
