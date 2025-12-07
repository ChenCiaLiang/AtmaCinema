import 'package:flutter/foundation.dart';

const String devBaseUrl = 'http://127.0.0.1:8000/api';
const String prodBaseUrl = 'https://snow-rhinoceros-141575.hostingersite.com/api';
// final String endpoint = '/api';
final String devGambarUrl = 'http://127.0.0.1:8000';
final String prodGambarUrl = 'https://snow-rhinoceros-141575.hostingersite.com';

String get url => kReleaseMode ? prodBaseUrl : devBaseUrl;
String get urlGambar => kReleaseMode ? prodGambarUrl : devGambarUrl;

//hosting
// final String url = 'snow-rhinoceros-141575.hostingersite.com';
// final String endpoint = '/api';
// final String urlGambar = 'https://snow-rhinoceros-141575.hostingersite.com';

//emu
// final String url = '10ja efi';
// final String endpoint = '/database/public/api';
