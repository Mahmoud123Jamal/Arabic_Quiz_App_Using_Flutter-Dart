import 'package:flutter/material.dart';
import 'result.dart';
import 'quiz.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, 
      title: 'أسئلة متنوعه',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const MyHomePage(title: 'أسئلة متنوعه'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
 
  State<MyHomePage> createState() => _MyHomePageState();
}



bool isSwitched = false;

class _MyHomePageState extends State<MyHomePage> {
 
  int _questionIndex = 0;
  int _totalScore = 0;

  answerQuestion(int score) {
    setState(() {
      _questionIndex += 1;
      _totalScore += score;
    });
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  final List<Map<String, Object>> _questions = [
    {
'questionText': 'عضو من أعضاء الجسم يقوم بتخزين السكر الزائد بالجسم، فما هو؟' ,
      'answers': [
        {'text': 'البنكرياس' , 'score': 0},
        {'text': 'الكبد', 'score':1},
        {'text': 'القلب', 'score': 0},
        {'text': 'المرارة', 'score': 0},
      ]
    },
    {
 'questionText': 'كذلك أحد الغازات يطلق عليه غاز الضحك، فما هو؟',
      'answers': [
        {'text': 'غاز أكسيد النيتروز', 'score': 1},
        {'text': 'غاز النيتروجين', 'score': 0},
        {'text': 'غاز الأكسجين', 'score': 0},
        {'text': 'غاز ثاني اكسيد الكربون', 'score': 0},
      ]
    },
    {
      'questionText': 'من هو العالم الذي اكتشف البنسلين؟',
      'answers': [
        {'text': 'الكسندر فلمنج', 'score': 1},
        {'text': 'لكسندر غراهام بيل', 'score': 0},
        {'text': 'توماس أديسون', 'score': 0},
        {'text': 'نيوتن', 'score': 0},
      ]
    },
 
  {
      'questionText': 'غاز يمثل نسبة 75% من كتلة الشمس، فما هو؟',
      'answers': [
        {'text': 'الأكسجين', 'score': 0},
        {'text': 'الهيدروجين', 'score': 1},
        {'text': 'اكسيد النيتروجين', 'score': 0},
        {'text': 'ثاني أكسيد الكربون', 'score': 0},
      ]
    },

     {
      'questionText': 'يستخرج الفازلين من مادة عضوية فما هي؟',
      'answers': [
        {'text': 'النفثالين', 'score': 0},
        {'text': 'البرافين ', 'score': 0},
        {'text': 'النفط', 'score': 1},
        {'text': 'الكربوهيدرات', 'score': 0},
      ]
    },

     {
      'questionText': 'أقوي الأحجار الكريمة، فما هو؟',
      'answers': [
        {'text': 'الياقوت', 'score': 0},
        {'text': 'الفيروز ', 'score': 0},
        {'text': 'الألماس', 'score': 1},
        {'text': 'لا توجد اجابة صحيحة', 'score': 0},
      ]
    },

     {
      'questionText': 'ما هو اسم أبطأ حيوان في العالم؟',
      'answers': [
        {'text': 'الكسلان ذو الثلاث أصابع', 'score': 1},
        {'text': 'السلحفاه', 'score': 0},
        {'text': 'القرد', 'score': 0},
        {'text': 'الغزال', 'score': 0},
      ]
    },

     {
      'questionText': 'حيوان يمتلك ثلاثة قلوب فما هو؟ ',
      'answers': [
        {'text': 'نجم البحر ', 'score': 0},
        {'text': 'قنديل البحر', 'score': 0},
        {'text': 'الأخطبوط', 'score': 1},
        {'text': 'سمك القرش', 'score': 0},
      ]
    },

     {
      'questionText': ' ما هو الحيوان الذي يستطيع أن ينام ويفتح أحدي عينيه؟',
      'answers': [
        {'text': 'الفيل', 'score': 0},
        {'text': 'الأسد', 'score': 0},
        {'text': 'الفظ', 'score': 1},
        {'text': 'النمر', 'score': 0},
      ]
    },

     {
      'questionText': 'ما هو الطائر الذي يتمكن من تمييز اللون الأزرق؟ ',
      'answers': [
        {'text': 'النسر', 'score': 0},
        {'text': 'الغراب', 'score': 0},
        {'text': 'البومة', 'score':1},
        {'text': 'الصقر', 'score': 0},
      ]
    },

     {
      'questionText': 'ما الحيوان الذي يلد عن طريق الفم؟',
      'answers': [
        {'text': 'الفقمة', 'score': 0},
        {'text': 'التمساح', 'score': 0},
        {'text': 'الضفدع المعدي', 'score': 1},
        {'text': 'السلحفاه', 'score': 0},
      ]
    },

     {
      'questionText': 'ما هو الطائر الذي لا يستطيع المشي؟',
      'answers': [
        {'text': 'الطاووس', 'score': 0},
        {'text': 'النعام', 'score': 0},
        {'text': 'مالك الحزين', 'score': 0},
        {'text': 'الغطاس', 'score': 1},
      ]
    },

     {
      'questionText': 'الحيوان الذي يستمر في النمو حتى الموت؟',
      'answers': [
        {'text': 'الأخطبوط', 'score': 0},
        {'text': 'سلطعون البحر', 'score': 1},
        {'text': 'نجم البحر', 'score': 0},
        {'text': 'الجمبري', 'score': 0},
      ]
    },

     {
      'questionText': 'ما اسم أكبر دولة في العالم؟',
      'answers': [
        {'text': 'روسيا', 'score': 1},
        {'text': 'فرنسا', 'score': 0},
        {'text': 'انجلترا', 'score': 0},
        {'text': 'اسبانيا', 'score': 0},
      ]
    },

     {
      'questionText': 'ما اسم أصغر دولة في العالم؟',
      'answers': [
        {'text': 'قطر', 'score': 0},
        {'text': 'الفاتيكان', 'score': 1},
        {'text': 'البحرين', 'score': 0},
        {'text': 'جزر القمر', 'score': 0},
      ]
    },

     {
      'questionText': 'ما هو عدد المناطق الزمنية في روسيا؟',
      'answers': [
        {'text': '10', 'score': 0},
        {'text': '8', 'score': 0},
        {'text': '9', 'score': 0},
        {'text': '11', 'score': 1},
      ]
    },

     {
      'questionText': 'ما هو عدد الكيلومترات في الميل؟',
      'answers': [
        {'text': '1.1', 'score': 0},
        {'text': '1.3', 'score': 0},
        {'text': '1.5', 'score': 0},
        {'text': '1.6', 'score': 1},
      ]
    },

     {
      'questionText': 'كم عدد الصمامات الموجودة في عضلة القلب؟',
      'answers': [
        {'text': '4', 'score': 1},
        {'text': '8', 'score': 0},
        {'text': '6', 'score': 0},
        {'text': '2', 'score': 0},
      ]
    },

     {
      'questionText': 'كم عنصرًا يحتوي الجدول الدوري؟',
      'answers': [
        {'text': '112', 'score': 0},
        {'text': '120', 'score': 0},
        {'text': '180', 'score': 0},
        {'text': '118', 'score': 1},
      ]
    },

     {
      'questionText': 'ما هي الرياضة التي يُطلق عليها اسم ملكة الرياضة؟',
      'answers': [
        {'text': 'كرة القدم', 'score': 1},
        {'text': 'كرة السلة', 'score': 0},
        {'text': 'كرة الطائرة', 'score': 0},
        {'text': 'كرة اليد', 'score': 0},
      ]
    },//20

     {
      'questionText': 'ما هو أصل الجبن البري (بالإنجليزية: Brie cheese)',
      'answers': [
        {'text': 'فرنسا', 'score': 1},
        {'text': 'المانيا', 'score': 0},
        {'text': 'المغرب', 'score': 0},
        {'text': 'اسبانيا', 'score': 0},
      ]
    },

     {
      'questionText': ' أين يوجد مقام سيدنا إبراهيم عليه السلام ؟',
      'answers': [
        {'text': 'مكه المكرمة', 'score': 1},
        {'text': 'المدينه المنوره', 'score': 0},
        {'text': 'فلسطين', 'score': 0},
        {'text': 'الشام', 'score': 0},
      ]
    },

     {
      'questionText': 'ما هي المدينة التي تسمّى مدينة الضباب؟',
      'answers': [
        {'text': 'برشلونه', 'score': 0},
        {'text': 'مدريد', 'score': 0},
        {'text': 'لندن', 'score': 1},
        {'text': 'مانشستر', 'score': 0},
      ]
    },

     {
      'questionText': 'ما هي نسبة الماء في الكرة الأرضية؟',
      'answers': [
        {'text': '69%', 'score': 0},
        {'text': '70%', 'score': 0},
        {'text': '71%', 'score': 1},
        {'text': '72%', 'score': 0},
      ]
    },

     {
      'questionText': 'الزعيم الروحي للهند خلال حركة استقلالها؟',
      'answers': [
        {'text': 'أنديرا غاندي', 'score': 0},
        {'text': 'مهاتما غاندي', 'score': 1},
        {'text': ' تشي جيفارا', 'score': 0},
        {'text': 'لا توجد اجابه صحيحه', 'score': 0},
      ]
    },//25

     {
      'questionText': 'كم يبلغ عدد من العضلات التي تملكها حشرة الجراد؟',
      'answers': [
        {'text': '10', 'score': 0},
        {'text': '100', 'score': 0},
        {'text': '60', 'score': 0},
        {'text': '900 ', 'score': 1},
      ]
    },

     {
      'questionText': 'مرض ما كان قد فتك بما يقارب نصف عدد سكان أوروبا؟ ما هو؟',
      'answers': [
        {'text': 'كورونا', 'score': 0},
        {'text': 'جدري القرود', 'score': 0},
        {'text': 'الثل الرئوي', 'score': 0},
        {'text': 'الطاعون', 'score': 1},
      ]
    },

     {
      'questionText': 'متى وقع صُلح الحُديبية؟',
      'answers': [
        {'text': 'عام 6 هجرية', 'score': 1},
        {'text': 'عام 5 هجرية', 'score': 0},
        {'text': 'عام 4 هجرية', 'score': 0},
        {'text': 'عام 2 هجرية', 'score': 0},
      ]
    },

     {
      'questionText': 'في اي مدينة تقع ساعة بيج بين الشهيرة؟',
      'answers': [
        {'text': 'باريس', 'score': 0},
        {'text': 'لندن', 'score': 1},
        {'text': 'برشلونه', 'score': 0},
        {'text': 'مدريد', 'score': 0},
      ]
    },

     {
      'questionText': 'كم عدد أسنان القط ؟',
      'answers': [
        {'text': '30', 'score': 0},
        {'text': '32', 'score': 0},
        {'text': '38', 'score': 0},
        {'text': '40', 'score': 1},
      ]
    },

     {
      'questionText': 'يوجد حيوان مفترس إذا اصابه الجوع أكل صغاره فما اسم هذا الحيوان؟',
      'answers': [
        {'text': 'الاسد', 'score': 0},
        {'text': 'النمر', 'score': 1},
        {'text': 'الضبع', 'score': 0},
        {'text': 'فرس النهر', 'score': 0},
      ]
    },

     {
      'questionText': 'اين صنعت أول كسوة للكعبة؟',
      'answers': [
        {'text': 'مصر', 'score': 1},
        {'text': 'السعودية', 'score': 0},
        {'text': 'ليبيا', 'score': 0},
        {'text': 'فلسطين', 'score': 0},
      ]
    },

     {
      'questionText': 'كم عدد السجدات في القرآن الكريم ؟',
      'answers': [
        {'text': '12', 'score': 0},
        {'text': '9', 'score': 0},
        {'text': '13', 'score': 0},
        {'text': '15', 'score': 1},
      ]
    },

     {
      'questionText': 'أي من اعضاء الجسم يستهلك 40% من أوكسجين الدم ؟',
      'answers': [
        {'text': 'القلب', 'score': 0},
        {'text': 'الكبد', 'score': 0},
        {'text': 'المخ', 'score': 1},
        {'text': 'الامعاء الدقيقه', 'score': 0},
      ]
    },

     {
      'questionText': 'من كم لاعب يتكون فريق كره السله ؟',
      'answers': [
        {'text': '4', 'score': 0},
        {'text': '11', 'score': 0},
        {'text': '7', 'score': 0},
        {'text': '5', 'score': 1},
      ]
    },

     {
      'questionText': 'من هو أكبر محيط في العالم؟',
      'answers': [
        {'text': 'الهادي', 'score': 1},
        {'text': 'الهندي', 'score': 0},
        {'text': 'الاطلسي', 'score': 0},
        {'text': 'المحيط المتجمد الشمالي', 'score': 0},
      ]
    },

     {
      'questionText': 'ما هي أقصر سورة في القران الكريم؟',
      'answers': [
        {'text': 'الكوثر', 'score': 1},
        {'text': 'الاخلاص', 'score': 0},
        {'text': 'الناس', 'score': 0},
        {'text': 'الفلق', 'score': 0},
      ]
    },

     {
      'questionText': 'ماهي أطول سورة في القران؟',
      'answers': [
        {'text': 'البقرة', 'score': 1},
        {'text': 'مريم', 'score': 0},
        {'text': 'محمد', 'score': 0},
        {'text': 'يوسف', 'score': 0},
      ]
    },

     {
      'questionText': 'ما هي الدولة التي يسكنها أكبر عدد سكان في العالم؟',
      'answers': [
        {'text': 'اليابان', 'score': 0},
        {'text': 'روسيا', 'score': 0},
        {'text': 'الصين', 'score': 1},
        {'text': 'ماليزيا', 'score': 0},
      ]
    },

     {
      'questionText': 'من هو ابن سيدنا آدم عليـه السلام الأول؟',
      'answers': [
        {'text': 'هابيل', 'score': 0},
        {'text': ' قابيل', 'score': 1},
        {'text': 'محمد', 'score': 0},
        {'text': 'يوسف', 'score': 0},
      ]
    }, //40 Questions

    
  ];


  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.sports_bar_outlined),     
        title: Text(widget.title , style: TextStyle(
                color: isSwitched == false ? Colors.white : Colors.black),),
        actions:  [
           Switch(
              value: isSwitched,
              onChanged: (value) {
                setState(() {
                  isSwitched = value;
                });
              }),
          const Icon(Icons.quiz_outlined),
          const Icon(Icons.sports_bar),
          
         
        ],
     backgroundColor: Colors.teal,
     
      ),
      body: Container(  
        width: double.infinity,
        color: isSwitched == false ? Colors.white : Colors.black,
        padding:const EdgeInsets.all(9.0) ,
         child: _questionIndex < _questions.length
              ? Quiz(_questions, _questionIndex, answerQuestion)
              : Result(_resetQuiz, _totalScore),
        ),
     
    );
  }
}