import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import 'package:weather/model/weather_model.dart';
import 'package:weather/services/weather_service.dart';

part 'get_weather_cubit_state.dart';

class GetWeatherCubit extends Cubit<GetWeatherCubitState> {
  GetWeatherCubit() : super(GetWeatherInitial());

  getWeather({required String cityName}) async {
    try {
      WeatherModel weatherModel =
          await WeatherService(Dio()).getWeatherInfo(cityName: cityName);
      if (weatherModel == true) {
        emit(GetWeatherLoad());
      }
      emit(GetWeatherSuccess(weatherModel: weatherModel));
    } catch (e) {
      emit(GetWeatherFailure());
    }
  }
}
