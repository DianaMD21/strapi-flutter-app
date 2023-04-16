import 'package:app_pucmm/bindings/teacher_evaluation_binding.dart';
import 'package:app_pucmm/entities/teacher_evaluation.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

import '../bindings/class_binding.dart';
import '../bindings/course_binding.dart';
import '../bindings/initial_binding.dart';
import '../bindings/login_binding.dart';
import '../bindings/profile_binding.dart';
import '../pages/auth/screen/login.dart';
import '../pages/enrollment/screens/class_option.dart';
import '../pages/enrollment/screens/course_search.dart';
import '../pages/hub/screens/hub_screen.dart';
import '../pages/initial_page.dart';
import '../pages/profile/screens/profile.dart';
import '../pages/teacher_evaluation/screens/questions_screen.dart';
import '../pages/teacher_evaluation/screens/teachers_to_evaluate_screen.dart';
import 'app_routes.dart';

final List<GetPage> PAGES = [
  GetPage(
      name: Routes.HOME_SCREEN,
      preventDuplicates: true,
      participatesInRootNavigator: true,
      title: HubScreen.pageTitle,
      page: () => const HubScreen(),
      transition: Transition.cupertino,
      binding: ProfileBinding()),
  GetPage(
      name: Routes.COURSE_SEARCH_SCREEN,
      preventDuplicates: true,
      participatesInRootNavigator: true,
      title: CourseSearch.pageTitle,
      page: () => const CourseSearch(),
      transition: Transition.cupertino,
      binding: CourseBiding()),
  GetPage(
      name: Routes.CLASS_OPTION_SCREEN,
      preventDuplicates: true,
      participatesInRootNavigator: true,
      title: ClassOption.pageTitle,
      page: () => const ClassOption(),
      transition: Transition.cupertino,
      binding: ClassBiding()),
  GetPage(
      name: Routes.LOGIN,
      preventDuplicates: true,
      participatesInRootNavigator: true,
      title: LoginScreen.pageTitle,
      transition: Transition.cupertino,
      page: () => const LoginScreen(),
      binding: LoginBinding()),
  GetPage(
    name: Routes.PROFILE,
    preventDuplicates: true,
    participatesInRootNavigator: true,
    title: ProfileScreen.pageTitle,
    transition: Transition.cupertino,
    page: () => const ProfileScreen(),
    binding: ProfileBinding(),
  ),
  GetPage(
    name: Routes.TEACHER_EVALUATION,
    preventDuplicates: true,
    participatesInRootNavigator: true,
    title: TeachersToEvaluateScreen.pageTitle,
    page: () => const TeachersToEvaluateScreen(),
    transition: Transition.cupertino,
    binding: TeacherEvaluationBinding(),
  ),
  GetPage(
      name: Routes.QUESTIONS_TEACHER_EV,
      preventDuplicates: true,
      participatesInRootNavigator: true,
      title: QuestionsScreen.pageTitle,
      page: () => QuestionsScreen(
            questions: [],
            teacher: TeacherEvaluation as TeacherEvaluation,
            count: 0,
          ),
      transition: Transition.cupertino,
      binding: TeacherEvaluationBinding()),
  GetPage(
      name: Routes.INITIAL,
      preventDuplicates: true,
      participatesInRootNavigator: true,
      title: InitialPage.pageTitle,
      transition: Transition.cupertino,
      page: () => const InitialPage(),
      binding: InitialBinding()),
];
