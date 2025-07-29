import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfoliosite/ui/home/widgets/home_page.dart';
import 'package:portfoliosite/ui/projects/widgets/projects_page.dart';
import 'routes.dart';

GoRouter router(BuildContext context) {
  return GoRouter(
    initialLocation: Routes.home,
    routes: [
      GoRoute(
        path: Routes.home,
        builder: (context, state) {
          return const HomePage();
        },
        routes: [
          GoRoute(
            path: Routes.projects,
            builder: (context, state) {
              return ProjectsPage();
            },
          ),
        ],
      ),
    ],
  );
}
