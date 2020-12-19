library malabar_hijri_date;

import 'package:malabar_hijri_date/src/array.dart';


int lengthOfMonth;
int hDay;
int hMonth;
int hYear;
int wkDay;
String longMonthName;
String shortMonthName;
String dayWeName;
Map<int, int> adjustments;

_gMod(int n, int m) {
  return ((n % m) + m) % m;
}

gregorianToHijri(pYear, pMonth, pDay) async{
  return await res().then((ummAlquraDateArray){
    var day = (pDay);
    var month = (pMonth);
    var year = (pYear);
    var m = month;
    var y = year;
    if (m < 3) {
      y -= 1;
      m += 12;
    }

    var a = (y / 100).floor();
    var jgc = a - (a / 4.0).floor() - 2;
    var cjdn = (365.25 * (y + 4716)).floor() +
        (30.6001 * (m + 1)).floor() +
        day -
        jgc -
        1524;
    a = ((cjdn - 1867216.25) / 36524.25).floor();
    jgc = a - (a / 4.0).floor() + 1;
    var b = cjdn + jgc + 1524;
    var c = ((b - 122.1) / 365.25).floor();
    var d = (365.25 * c).floor();
    month = ((b - d) / 30.6001).floor();
    day = (b - d) - (30.6001 * month).floor();

    if (month > 13) {
      c += 1;
      month -= 12;
    }
    month -= 1;
    year = c - 4716;
    var mcjdn = cjdn - 2400000;
    var i;
    for (i = 0; i < ummAlquraDateArray.length; i++) {
      if (ummAlquraDateArray[i] > mcjdn) break;
    }

    var iln = i + 16260;
    var ii = ((iln - 1) / 12).floor();
    var iy = ii + 1;
    var im = iln - 12 * ii;
    var id = mcjdn - ummAlquraDateArray[i - 1] + 1;
    var ml = ummAlquraDateArray[i] - ummAlquraDateArray[i - 1];
    print(ummAlquraDateArray[i]);
    var lengthOfMonth = ml;
    var wd = _gMod(cjdn + 1, 7);
    wkDay = wd == 0 ? 7 : wd;
    return '$iy, $im, $id';
  });

}
