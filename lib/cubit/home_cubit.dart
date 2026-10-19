
import 'package:flutter_bloc/flutter_bloc.dart';
import '../core/api_service.dart';
import '../models/article_model.dart';
import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  final ApiService apiService = ApiService();

  Future<void> getHomeData() async {
    try {
      emit(HomeLoading());

      final response = await apiService.getTopHeadlines();
      final articles = response.data['articles'] as List;

      final data = articles
          .map((article) => ArticleModel.fromJson(article))
          .toList();

      emit(HomeSuccess(data));
    } catch (e) {
      emit(HomeFailure(e.toString()));
    }
  }

  Future<void> getSearchData({required String query}) async {
    try {
      emit(HomeLoading());

      final response = await apiService.getSearchData(query: query);
      final articles = response.data['articles'] as List;

      final data = articles
          .map((article) => ArticleModel.fromJson(article))
          .toList();

      emit(HomeSuccess(data));
    } catch (e) {
      emit(HomeFailure(e.toString()));
    }
  }
}
