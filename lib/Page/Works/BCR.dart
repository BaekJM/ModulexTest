import 'package:flutter/material.dart';
import 'package:flutter_beep/flutter_beep.dart';
import 'package:flutter_qr_bar_scanner/qr_bar_scanner_camera.dart';
import 'package:flutter_vibrate/flutter_vibrate.dart';
import 'package:modulex/Page/MainPage.dart';
import 'package:wakelock/wakelock.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String? _qrInfo = 'Scan Please';
  bool _canVibrate = true;
  bool _camState = false;
  Color Test = Colors.transparent;

  @override
  void initState() {
    super.initState();
    _init();
  }

  /// 초기화 함수
  _init() async {
    bool canVibrate = await Vibrate.canVibrate;
    setState(() {
      // 화면 꺼짐 방지
      Wakelock.enable();

      // QR 코드 스캔 관련
      _camState = true;

      // 진동 관련
      _canVibrate = canVibrate;
      _canVibrate
          ? debugPrint('This device can vibrate')
          : debugPrint('This device cannot vibrate');
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  /// QR/Bar Code 스캔 성공시 호출
  _qrCallback(String? code) {
    setState(() {
      // 동일한걸 계속 읽을 경우 한번만 소리/진동 실행..
      if (code != _qrInfo) {
        FlutterBeep.beep(); // 비프음
        if (_canVibrate) Vibrate.feedback(FeedbackType.heavy); // 진동
      } else if (code == '12345670') {
        Test = Colors.green;
        Navigator.pop(context);
      } // 분별 기능
      _camState = false;
      _qrInfo = code;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 500,
              width: 500,
              child: Stack(
                children: [
                  QRBarScannerCamera(
                    // 에러 발생시..
                    onError: (context, error) => Text(
                      error.toString(),
                      style: TextStyle(color: Colors.red),
                    ),
                    // QR 이 읽혔을 경우
                    qrCodeCallback: (code) {
                      _qrCallback(code);
                    },
                  ),
                  Center(
                    child: Container(
                        decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Test!, width: 3)),
                        child: Icon(
                      Icons.check,
                      color: Test!,
                      size: 70,
                    )),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 10,
            ),

            /// 사이즈 자동 조절을 위해 FittedBox 사용
            FittedBox(
              fit: BoxFit.fitWidth,
              child: Text(
                _qrInfo!,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ));
  }
}
