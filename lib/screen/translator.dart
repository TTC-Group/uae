import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:speech_to_text/speech_recognition_error.dart';
import 'package:speech_to_text/speech_recognition_result.dart';
import 'package:speech_to_text/speech_to_text.dart';
import 'package:uae/utills/allColors.dart';
import 'package:translator/translator.dart';

class LangTranslator extends StatefulWidget {
  @override
  _LangTranslatorState createState() => _LangTranslatorState();
}

class _LangTranslatorState extends State<LangTranslator> {

  bool isSpeaking= false;
  final flutterTTS= FlutterTts();
  void initializeTTS(){
    flutterTTS
        .setStartHandler(() {
          setState(() {
            isSpeaking= true;
          });
    });
    flutterTTS
        .setCompletionHandler(() {
      setState(() {
        isSpeaking= false;
      });
    });
    flutterTTS
        .setErrorHandler((message) {
      setState(() {
        isSpeaking= false;
      });
    });
  }

  void speak()async{
    if(lastWords2.isNotEmpty)
      {
        await flutterTTS.setLanguage('ar');
        await flutterTTS
            .speak(lastWords2);
      }
  }
  void stop()async{
      await flutterTTS
          .stop();
  }


  bool _hasSpeech = false;
  var translation;
  bool _logEvents = false;
  double level = 0.0;
  double minSoundLevel = 50000;
  double maxSoundLevel = -50000;
  String lastWords = 'Text will visible here..';
  String lastWords2 = 'Text will visible here..';
  String lastError = '';
  String lastStatus = '';
  String _currentLocaleId = '';
  List<LocaleName> _localeNames = [];
  var translator= GoogleTranslator();
  final SpeechToText speech = SpeechToText();
  AllColors _allColor=AllColors();
  @override
  void initState() {
    super.initState();
    initSpeechState();
    initializeTTS();
  }
  @override
  void dispose(){
    flutterTTS.stop();
    super.dispose();
  }

  Future<void> initSpeechState() async {
    _logEvent('Initialize');
    var hasSpeech = await speech.initialize(
      onError: errorListener,
      onStatus: statusListener,
      debugLogging: true,
    );
     translator = GoogleTranslator();
    if (hasSpeech) {
     _localeNames = await speech.locales();
      var systemLocale = await speech.systemLocale();
      _currentLocaleId = 'bn_BD';
      print("hhhhhhhhhhhhhhhhh");
      print(_currentLocaleId);
    }
    if (!mounted) return;
    setState(() {
      _hasSpeech = hasSpeech;
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: _allColor.appColor,
          title: const Text('Translator'),
        ),

        body: Padding(
          padding: const EdgeInsets.only(bottom: 43.0),
          child: Column(
              children: [
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                color: Theme.of(context).selectedRowColor,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0,top: 10),
                  child: Stack
                    (
                      children:[
                        Padding(
                          padding: const EdgeInsets.only(right: 45.0,top: 10),
                          child: Text(
                            lastWords,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 20
                            ),
                          ),
                        ),
                        // Positioned(
                        //     right: 0,
                        //     top: 0,
                        //     child: Icon(Icons.play_arrow)
                        // ),
                      ])
                ),
              ),
            ),
            Divider(),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                color: Theme.of(context).selectedRowColor,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0,top: 2),
                  child:
                    Stack
                      (
                        children:[
                        Align(
                          alignment: Alignment.topRight,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 45.0,top: 10),
                            child: Text(
                            lastWords2,
                            textAlign: TextAlign.right,
                              style: TextStyle(
                                  fontSize: 20
                              ),
                       ),
                          ),
                        ),
                          Positioned(
                              right: 0,
                              top: 0,
                              child: IconButton
                                (
                                 icon: Icon(
                                   isSpeaking?
                                   Icons.volume_down_sharp:
                                   Icons.volume_up,
                                   size: 30,
                                   color: isSpeaking?
                                   Colors.grey:
                                   _allColor.appButtonColor,
                                 ),
                                onPressed: () {
                                  isSpeaking?stop():speak();
                                },)
                          ),
                    ])
                ),
              ),
            ),

          ]),
        ),

        floatingActionButton: Padding(
          padding: const EdgeInsets.only(right: 34),
          child: Container(
            height: 100,
            child: Column(
              children: [
                Container(
                  width: 60,
                  height: 60,
                 // alignment: Alignment.center,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          blurRadius: .26,
                          spreadRadius: level * 1.5,
                          color: Colors.black.withOpacity(.05))
                    ],
                    color: _allColor.appButtonColor,
                    borderRadius: BorderRadius.all
                      (Radius.circular(50)),
                  ),
                  child: IconButton(
                    icon: Icon(Icons.mic,color: Colors.white,
                    size: 30,),
                    onPressed: () => startListening(),
                  ),
                ),
                SpeechStatusWidget(speech: speech),
              ],
            ),
          ),
        ),
   floatingActionButtonLocation:
   FloatingActionButtonLocation.startDocked,
    );
  }

  void startListening() {
    _logEvent('start listening');
    lastWords = '';
    lastError = '';
    speech.listen(
        onResult: resultListener,
        listenFor: Duration(seconds: 30),
        pauseFor: Duration(seconds: 5),
        partialResults: true,
        localeId:"bn_BD",
        onSoundLevelChange: soundLevelListener,
        cancelOnError: true,
        listenMode: ListenMode.confirmation);
    setState(() {

    });
  }

  void resultListener(SpeechRecognitionResult result) async{
    _logEvent(
        'Result listener final: ${result.finalResult}, words: ${result.recognizedWords}');
    setState(() {
      lastWords = '${result.recognizedWords} ';
      translator
          .translate(lastWords, to: 'ar')
          .then((result) {
            setState(() {
              lastWords2=result.toString();
              print("Suhaaaaaaaaaaaa");
              print(lastWords2);
            });

      });

    });
  }

  void soundLevelListener(double level) {
    minSoundLevel = min(minSoundLevel, level);
    maxSoundLevel = max(maxSoundLevel, level);
    // _logEvent('sound level $level: $minSoundLevel - $maxSoundLevel ');
    setState(() {
      this.level = level;
    });
  }

  void errorListener(SpeechRecognitionError error) {
    _logEvent(
        'Received error status: $error, listening: '
            '${speech.isListening}');
    setState(() {
      lastError = '${error.errorMsg} - ${error.permanent}';
    });
  }

  void statusListener(String status) {
    _logEvent(
        'Received listener status: $status, listening: ${speech.isListening}');
    setState(() {
      lastStatus = '$status';
    });
  }

  void _switchLang(selectedVal) {
    setState(() {
      _currentLocaleId = selectedVal;
    });
    print(selectedVal);
  }

  void _logEvent(String eventDescription) {
    if (_logEvents) {
      var eventTime = DateTime.now().toIso8601String();
      print('$eventTime $eventDescription');
    }
  }

  void _switchLogging(bool? val) {
    setState(() {
      _logEvents = val ?? false;
    });
  }
}

/// Display the current status of the listener
class SpeechStatusWidget extends StatelessWidget {
  const SpeechStatusWidget({
    Key? key,
    required this.speech,
  }) : super(key: key);

  final SpeechToText speech;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8),
     // color: Colors.teal.shade200,
      child: Center(
        child: speech.isListening
            ? Text(
          "I'm listening...",
          style: TextStyle(fontWeight: FontWeight.bold),
        )
            : Text(
          'Not listening',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}