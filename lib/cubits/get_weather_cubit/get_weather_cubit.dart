import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'get_weather_cubit_state.dart';

class GetWeatherCubit extends Cubit<GetWeatherCubitState> {
  GetWeatherCubit() : super(GetWeatherCubitInitial());
}
