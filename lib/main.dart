import 'package:bokklyapp/Constants.dart';
import 'package:bokklyapp/Features/home/data/models/repos/home_repo_impl.dart';
import 'package:bokklyapp/Features/home/presentation/manger/featured_books_cubit/cubit/featured_books_cubit.dart';
import 'package:bokklyapp/Features/home/presentation/manger/newest_books_cubit/cubit/newest_books_cubit.dart';
import 'package:bokklyapp/core/utlis/app_router.dart';
import 'package:bokklyapp/core/utlis/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setup();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) => FeaturedBooksCubit(getIt.get<HomeRepoImpl>())
              ..fetchfeaturedbooks()),
        BlocProvider(
            create: (context) => NewestBooksCubit(getIt.get<HomeRepoImpl>())
              ..fetchnewestbooks()),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: kPrimaryColor,
            textTheme:
                GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
