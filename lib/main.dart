import 'package:flutter/material.dart';

void main (){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SingleChailel(),));
}
class SingleChailel extends StatelessWidget {
  const SingleChailel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('text final'),

        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return Single();
                }));
              }, child: Text('السوال الاول')),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return Nav();
                }));
              }, child: Text('السوال الثاني')),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return ListViwe_page();
                }));
              }, child: Text('السوال الثالث')),
            ],
          ),
        )

    );
  }
}
class Nav extends StatefulWidget {
  Nav({super.key});

  @override
  State<Nav> createState() => _NavState();
}

class _NavState extends State<Nav> {

  int navcount=0;
  List<Widget>pages =[
    Home(),
    Setting(),
    Profiler()
  ];
  String gettitle(int index){
    switch(index){
      case 0 :
        return 'home page ';
      case 1:
        return 'setting page ';
      case 2:
        return 'profiler page ';
      default:
        return 'arror';
    }

  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text(gettitle(navcount)),
      ),
      body: IndexedStack(
        index: navcount,
        children: pages,

      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: navcount,
          onTap: (index){
            setState(() {
              navcount=index;
            });
          },
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.grey,
          items: [
            BottomNavigationBarItem(label: 'home', icon: Icon(Icons.home)),
            BottomNavigationBarItem(label: 'setting', icon: Icon(Icons.settings)),
            BottomNavigationBarItem(label: 'profiler', icon: Icon(Icons.person))
          ]),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.home, size: 50,color: Colors.grey,),
          Text('Home',
            style: TextStyle(
                fontSize: 29,
                color: Colors.grey
            ),)
        ],
      ),
    );
  }
}
class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.settings, size: 50,color: Colors.grey,),
          Text('setting',
            style: TextStyle(
                fontSize: 29,
                color: Colors.grey
            ),)
        ],
      ),
    );
  }
}
class Profiler extends StatelessWidget {
  const Profiler({super.key});

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.person, size: 50,color: Colors.grey,),
          Text('profiler',
            style: TextStyle(
                fontSize: 29,
                color: Colors.grey
            ),)
        ],
      ),
    );
  }
}
class ListViwe_page extends StatelessWidget {
  const ListViwe_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('السوال الثالث '),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.home),
            title: Text('home'),
            subtitle: Text('this is home page '),
            onTap: (){
              print('home');
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('protiler'),
            subtitle: Text('this is protiler page '),
            onTap: (){
              print('profiler');
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('setting'),
            subtitle: Text('this is setting page '),
            onTap: (){
              print('setting');
            },
          ),
        ],
      ),
    );
  }
}
class Single extends StatelessWidget {
  const Single({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('السوال الاول '),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Text('حصنو انفسكم دايم ب اذكار الصباح والمساء دايم لاتنسو اذكاركم وصلاتكم بوقتها افرحو وعيشو حياتكم برضى ربكم  وتحقيق احلامكم لاتحزنون لشيء ابد تاكدو ان ربي يعوض دايم وربي مع عباده ماينسى احد إبتسمو كثير زيدو بالتفاؤل بالخير وأبشرو بالسعاده الابديه ان شاء الله لكم دنيا واخره لاتنسون تتصدقون يوميا ولو بمويه للعصافير'),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child:Text('الأغنية دقت وتر موجود عند معظمنا اذا مو كلنا، وانت تسمع الأغنية تستحضر شخص وتجربة، حب، صداقة، وغيرها وكثيرة التجارب الي نرفع فيها سقف توقعاتنا، وللأسف ننصدم، رسالة لكل شخص استحضر تجربة، جا الوقت الي تتجاوز وتتخطى وطالع في المرايا، ولا تنسى حق نفسك، واشتري الي يشتريك، خلاص الى متى ؟ اوقف وقول بصوتك ( انا استحق الافضل في كل شي ) وركز على نفسك وأسرتك ورغباتك تلقائيا بتتحقق في الوقت المكتوب لها. تحياتي لروحك القوية '),
            ),
            SizedBox(height: 11,),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child:Text('الأغنية دقت وتر موجود عند معظمنا اذا مو كلنا، وانت تسمع الأغنية تستحضر شخص وتجربة، حب، صداقة، وغيرها وكثيرة التجارب الي نرفع فيها سقف توقعاتنا، وللأسف ننصدم، رسالة لكل شخص استحضر تجربة، جا الوقت الي تتجاوز وتتخطى وطالع في المرايا، ولا تنسى حق نفسك، واشتري الي يشتريك، خلاص الى متى ؟ اوقف وقول بصوتك ( انا استحق الافضل في كل شي ) وركز على نفسك وأسرتك ورغباتك تلقائيا بتتحقق في الوقت المكتوب لها. تحياتي لروحك القوية '),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child:Text('الأغنية دقت وتر موجود عند معظمنا اذا مو كلنا، وانت تسمع الأغنية تستحضر شخص وتجربة، حب، صداقة، وغيرها وكثيرة التجارب الي نرفع فيها سقف توقعاتنا، وللأسف ننصدم، رسالة لكل شخص استحضر تجربة، جا الوقت الي تتجاوز وتتخطى وطالع في المرايا، ولا تنسى حق نفسك، واشتري الي يشتريك، خلاص الى متى ؟ اوقف وقول بصوتك ( انا استحق الافضل في كل شي ) وركز على نفسك وأسرتك ورغباتك تلقائيا بتتحقق في الوقت المكتوب لها. تحياتي لروحك القوية '),
            ),
            SizedBox(height: 11,),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child:Text('الأغنية دقت وتر موجود عند معظمنا اذا مو كلنا، وانت تسمع الأغنية تستحضر شخص وتجربة، حب، صداقة، وغيرها وكثيرة التجارب الي نرفع فيها سقف توقعاتنا، وللأسف ننصدم، رسالة لكل شخص استحضر تجربة، جا الوقت الي تتجاوز وتتخطى وطالع في المرايا، ولا تنسى حق نفسك، واشتري الي يشتريك، خلاص الى متى ؟ اوقف وقول بصوتك ( انا استحق الافضل في كل شي ) وركز على نفسك وأسرتك ورغباتك تلقائيا بتتحقق في الوقت المكتوب لها. تحياتي لروحك القوية '),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child:Text('الأغنية دقت وتر موجود عند معظمنا اذا مو كلنا، وانت تسمع الأغنية تستحضر شخص وتجربة، حب، صداقة، وغيرها وكثيرة التجارب الي نرفع فيها سقف توقعاتنا، وللأسف ننصدم، رسالة لكل شخص استحضر تجربة، جا الوقت الي تتجاوز وتتخطى وطالع في المرايا، ولا تنسى حق نفسك، واشتري الي يشتريك، خلاص الى متى ؟ اوقف وقول بصوتك ( انا استحق الافضل في كل شي ) وركز على نفسك وأسرتك ورغباتك تلقائيا بتتحقق في الوقت المكتوب لها. تحياتي لروحك القوية '),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child:Text('الأغنية دقت وتر موجود عند معظمنا اذا مو كلنا، وانت تسمع الأغنية تستحضر شخص وتجربة، حب، صداقة، وغيرها وكثيرة التجارب الي نرفع فيها سقف توقعاتنا، وللأسف ننصدم، رسالة لكل شخص استحضر تجربة، جا الوقت الي تتجاوز وتتخطى وطالع في المرايا، ولا تنسى حق نفسك، واشتري الي يشتريك، خلاص الى متى ؟ اوقف وقول بصوتك ( انا استحق الافضل في كل شي ) وركز على نفسك وأسرتك ورغباتك تلقائيا بتتحقق في الوقت المكتوب لها. تحياتي لروحك القوية '),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child:Text('الأغنية دقت وتر موجود عند معظمنا اذا مو كلنا، وانت تسمع الأغنية تستحضر شخص وتجربة، حب، صداقة، وغيرها وكثيرة التجارب الي نرفع فيها سقف توقعاتنا، وللأسف ننصدم، رسالة لكل شخص استحضر تجربة، جا الوقت الي تتجاوز وتتخطى وطالع في المرايا، ولا تنسى حق نفسك، واشتري الي يشتريك، خلاص الى متى ؟ اوقف وقول بصوتك ( انا استحق الافضل في كل شي ) وركز على نفسك وأسرتك ورغباتك تلقائيا بتتحقق في الوقت المكتوب لها. تحياتي لروحك القوية '),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child:Text('الأغنية دقت وتر موجود عند معظمنا اذا مو كلنا، وانت تسمع الأغنية تستحضر شخص وتجربة، حب، صداقة، وغيرها وكثيرة التجارب الي نرفع فيها سقف توقعاتنا، وللأسف ننصدم، رسالة لكل شخص استحضر تجربة، جا الوقت الي تتجاوز وتتخطى وطالع في المرايا، ولا تنسى حق نفسك، واشتري الي يشتريك، خلاص الى متى ؟ اوقف وقول بصوتك ( انا استحق الافضل في كل شي ) وركز على نفسك وأسرتك ورغباتك تلقائيا بتتحقق في الوقت المكتوب لها. تحياتي لروحك القوية '),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child:Text('الأغنية دقت وتر موجود عند معظمنا اذا مو كلنا، وانت تسمع الأغنية تستحضر شخص وتجربة، حب، صداقة، وغيرها وكثيرة التجارب الي نرفع فيها سقف توقعاتنا، وللأسف ننصدم، رسالة لكل شخص استحضر تجربة، جا الوقت الي تتجاوز وتتخطى وطالع في المرايا، ولا تنسى حق نفسك، واشتري الي يشتريك، خلاص الى متى ؟ اوقف وقول بصوتك ( انا استحق الافضل في كل شي ) وركز على نفسك وأسرتك ورغباتك تلقائيا بتتحقق في الوقت المكتوب لها. تحياتي لروحك القوية '),
            )
          ],
        ),
      ),
    );
  }
}