import 'package:portfoliosite/domain/project_model.dart';

class ProjectsRepo {
  //TODO: Fetch projects from Git Hub or a remote server. For now, we will caveman projects.
  final List<Project> _projects = [
    Project(
      title: 'Body Therapy',
      description:
          'A mobile app built with flutter. Gives insight on MSK symptoms, possible cause and remedy.',
      imageUrl: 'assets/images/bodytherapy/icon.png',
      projectUrl: 'https://github.com/DanielDicksonDillimono/bodytherapy',
    ),
    Project(
      title: 'Replee',
      description:
          'A mobile app built with flutter. Create, share and follow workout routines.',
      imageUrl: 'assets/images/replee/icon.png',
      projectUrl: 'https://github.com/DanielDicksonDillimono/bodytherapy',
    ),

    Project(
      title: 'Linux IVI',
      description:
          'Invehicle Infotainment Application targeted for linux boards. Built with Qt(C++ and QML). Still needs to be completed',
      imageUrl: 'assets/images/IVI/icon.png',
      projectUrl:
          'https://github.com/DanielDicksonDillimono/in_vehicle_infotainment',
    ),
    Project(
      title: 'Portfolio Site',
      description:
          'A portfolio site built with Flutter. This one you are currently viewing.',
      imageUrl: 'assets/images/PortfolioSite/icon.png',
      projectUrl: 'https://github.com/DanielDicksonDillimono/portfoliosite',
    ),
  ];

  List<Project> get projects => List.unmodifiable(_projects);
}
