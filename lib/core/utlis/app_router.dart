import 'package:bokklyapp/Features/Splach/presentation/views/splach_view.dart';
import 'package:bokklyapp/Features/home/data/models/book_model/book_model.dart';
import 'package:bokklyapp/Features/home/data/models/repos/home_repo_impl.dart';
import 'package:bokklyapp/Features/home/presentation/manger/smilar_books_cubit/cubit/smilar_books_cubit_cubit.dart';
import 'package:bokklyapp/Features/home/presentation/views/book_details_view.dart';
import 'package:bokklyapp/Features/search/presentation/views/search_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../Features/home/presentation/views/home_view.dart';
import 'service_locator.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kBookDetailsView = '/bookDetailsView';
  static const kSearchView = '/searchView';
  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplachView(),
    ),
    GoRoute(
      path: kHomeView,
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
        path: kBookDetailsView,
        builder: (context, state) => BlocProvider(
              create: (context) => SmilarBooksCubitCubit(
                getIt.get<HomeRepoImpl>(),
              ),
              child: BookDetailsView(
                bookModel: state.extra as BookModel,
              ),
            )),
    GoRoute(
      path: kSearchView,
      builder: (context, state) => const SearchView(),
    ),
  ]);
}
