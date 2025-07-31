import 'package:portfoliosite/data/repository/projects_repo.dart';
import 'package:portfoliosite/domain/project_model.dart';

class ProjectsPageViewmodel {
  final ProjectsRepo _projectsRepo = ProjectsRepo();

  List<Project> get projects => _projectsRepo.projects;
}
