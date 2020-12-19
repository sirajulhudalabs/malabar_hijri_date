import 'package:dio/dio.dart';

final Map<int, String> monthNames = {
  1: 'Muharram',
  2: 'Safar',
  3: 'Rabi\' Al-Awwal',
  4: 'Rabi\' Al-Thani',
  5: 'Jumada Al-Awwal',
  6: 'Jumada Al-Thani',
  7: 'Rajab',
  8: 'Sha\'aban',
  9: 'Ramadan',
  10: 'Shawwal',
  11: 'Dhu Al-Qi\'dah',
  12: 'Dhu Al-Hijjah'
};

final Map<int, String> monthShortNames = {
  1: 'Muh',
  2: 'Saf',
  3: 'Rab1',
  4: 'Rab2',
  5: 'Jum1',
  6: 'Jum2',
  7: 'Raj',
  8: 'Sha\'',
  9: 'Ram',
  10: 'Shaw',
  11: 'DhuQ',
  12: 'DhuH'
};

final Map<int, String> wdNames = {
  7: "Sunday",
  1: "Monday",
  2: "Tuesday",
  3: "Wednesday",
  4: "Thursday",
  5: "Friday",
  6: "Saturday"
};

final Map<int, String> shortWdNames = {
  7: "Sun",
  1: "Mon",
  2: "Tue",
  3: "Wed",
  4: "Thu",
  5: "Fri",
  6: "Sat"
};

Future<dynamic> res() async {
  var data=  await Dio()
      .get('https://malabar-ijri-api.herokuapp.com/array')
      .then((value) => value.data[0]['data']);
  return data;
}
