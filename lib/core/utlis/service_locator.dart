import 'package:bokklyapp/Features/home/data/models/repos/home_repo_impl.dart';
import 'package:bokklyapp/core/utlis/api_service.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(
    apiService: getIt.get<ApiService>(),
  ));
}
