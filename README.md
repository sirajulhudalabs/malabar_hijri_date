# malabar_hijri

A Flutter Package for Hijri Date in Malabar of Kearala India, restructured every night of hilal sight

## Usage

#### Convert Gregorian date to Malabar Hijri:

 ```dart
  int year= DateTime.now().year;
  int month= DateTime.now().month;
  int day= DateTime.now().day;
  gregorianToHijri(year, month, day);
  /// result will be like: 2020, 12, 28
```
