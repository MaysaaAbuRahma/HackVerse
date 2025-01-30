import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Online Master Class',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    // تهيئة AnimationController
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 4), // مدة الحركة
    );

    // تهيئة Tween للحركة من -50 إلى 50 (من أعلى لأسفل ثم العودة)
    _animation = Tween<double>(begin: -50, end: 50).animate(_controller)
      ..addListener(() {
        setState(() {});
      });

    // بدء الحركة مع التكرار
    _controller.repeat(reverse: true); // التكرار مع العكس
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 50, 5, 58),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 50, 5, 58),
        title: const Text(
          'HackVerse Online',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: <Widget>[
          // استخدام AnimatedBuilder لتحريك الصور
          AnimatedBuilder(
            animation: _animation,
            builder: (context, child) {
              return Transform.translate(
                offset: Offset(0, _animation.value), // تحريك العناصر رأسياً
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    // البطاقة الأولى
                    Container(
                      width: 200,
                      height: 300,
                      margin: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(16.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(16.0),
                            child: const Image(
                              image: NetworkImage(
                                  'https://raw.githubusercontent.com/MaysaaAbuRahma/Add-images/main/Smarter%20Farm%20Management%20with%20AI.jpeg'),
                              height: double.infinity,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            top: 16,
                            left: 16,
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 6.0, horizontal: 10.0),
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.6),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Text(
                                'Recommended AgriTech',
                                style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey.shade900,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    // البطاقة الثانية
                    Positioned(
                      top: 30,
                      left: 50,
                      child: Container(
                        width: 200,
                        height: 300,
                        margin: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          color: Colors.orangeAccent,
                          borderRadius: BorderRadius.circular(16.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.3),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: Offset(0, 4),
                            ),
                          ],
                        ),
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(16.0),
                              child: const Image(
                                image: NetworkImage(
                                    'https://raw.githubusercontent.com/MaysaaAbuRahma/Add-images/main/47%20KHALIFA.jpeg'),
                                height: double.infinity,
                                width: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned(
                              top: 16,
                              left: 16,
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 6.0, horizontal: 10.0),
                                decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.6),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                child: Text(
                                  'Electronic games',
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.purple.shade900,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    // البطاقة الثالثة
                    Positioned(
                      top: 1,
                      left: 150,
                      child: Container(
                        width: 200,
                        height: 300,
                        margin: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          color: Colors.deepOrangeAccent.shade700,
                          borderRadius: BorderRadius.circular(16.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.3),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: Offset(0, 4),
                            ),
                          ],
                        ),
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(16.0),
                              child: const Image(
                                image: NetworkImage(
                                    'https://raw.githubusercontent.com/MaysaaAbuRahma/Add-images/main/Free%20Vector%20_%20Internet%20communication.jpeg'),
                                height: double.infinity,
                                width: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned(
                              top: 16,
                              left: 16,
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 6.0, horizontal: 10.0),
                                decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.6),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Text(
                                  'Social Media & Communities',
                                  style: TextStyle(
                                    fontSize: 11.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.lightBlue.shade900,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),

          SizedBox(height: 70),
          Column(
            children: [
              SectionTitle(
                title: 'Online Hackathon - Creativity Zone',
                color: Colors.white,
              ),
              Container(
                width: 400,
                height: 110,
                margin: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: Colors.purple.shade800,
                  borderRadius: BorderRadius.circular(16.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.8),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    // العنوان والأيقونة في أعلى الصندوق من البداية
                    const Positioned(
                      top: 8, // إزاحة من الأعلى
                      left: 8, // إزاحة من اليسار
                      child: Row(
                        children: [
                          FaIcon(
                            FontAwesomeIcons.truck,
                            color: Color.fromARGB(255, 228, 208, 26),
                            size: 40,
                          ),
                          SizedBox(width: 10), // مسافة بين الأيقونة والنص
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'E-Commerce',
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: 8.0),
                              Text(
                                '8 Hours',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.yellow,
                                ),
                              ),
                              Row(
                                children: [
                                  Icon(Icons.star,
                                      size: 16, color: Colors.amber),
                                  Icon(Icons.star,
                                      size: 16, color: Colors.amber),
                                  Icon(Icons.star,
                                      size: 16, color: Colors.amber),
                                  Icon(Icons.star,
                                      size: 16, color: Colors.amber),
                                  Icon(Icons.star_half,
                                      size: 16, color: Colors.amber),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    // الصورة في أعلى اليمين مع مسافة إضافية
                    Positioned(
                      right: 16, // زيادة المسافة من اليمين
                      top: 8, // إزاحة من الأعلى
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.3),
                              spreadRadius: 4,
                              blurRadius: 8,
                              offset: Offset(0, 4),
                            ),
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15.0),
                          child: Image.network(
                            'https://raw.githubusercontent.com/MaysaaAbuRahma/Add-images/main/ecomm.jpg',
                            width: 130,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CyberSecurityDetailPage(),
                    ),
                  );
                },
                child: Container(
                  width: 400,
                  height: 110,
                  margin: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: Colors.purple.shade700,
                    borderRadius: BorderRadius.circular(16.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.9),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      // العنوان والأيقونة في أعلى الصندوق من البداية
                      const Positioned(
                        top: 8, // إزاحة من الأعلى
                        left: 8, // إزاحة من اليسار
                        child: Row(
                          children: [
                            FaIcon(
                              FontAwesomeIcons.shieldAlt,
                              color: Colors.blueAccent,
                              size: 40,
                            ),
                            SizedBox(width: 10), // مسافة بين الأيقونة والنص
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Cyber Security',
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(height: 8.0),
                                Text(
                                  '6 Hours',
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    color: Color.fromARGB(255, 4, 117, 209),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.star,
                                        size: 16, color: Colors.amber),
                                    Icon(Icons.star,
                                        size: 16, color: Colors.amber),
                                    Icon(Icons.star,
                                        size: 16, color: Colors.amber),
                                    Icon(Icons.star_half,
                                        size: 16, color: Colors.amber),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      // الصورة في أعلى اليمين مع مسافة إضافية
                      Positioned(
                        right: 16, // زيادة المسافة من اليمين
                        top: 8, // إزاحة من الأعلى
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.3),
                                spreadRadius: 4,
                                blurRadius: 8,
                                offset: Offset(0, 4),
                              ),
                            ],
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15.0),
                            child: Image.network(
                              'https://raw.githubusercontent.com/MaysaaAbuRahma/Add-images/main/Cyber%20security%20image%20_%20Global%20security%20_%20Protecting%20devices.jpeg',
                              width: 130,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class CourseCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final double rating;
  final Color cardColor; // إضافة اللون لخلفية البطاقة
  final Color titleColor; // إضافة اللون للعناوين
  final Color subtitleColor; // إضافة اللون للوصف
  final Color ratingColor; // إضافة اللون للتقييم

  CourseCard({
    required this.title,
    required this.subtitle,
    required this.rating,
    required this.cardColor,
    required this.titleColor,
    required this.subtitleColor,
    required this.ratingColor,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: cardColor, // تعيين اللون الخلفي للبطاقة
      elevation: 8.0, // إضافة ظل للبطاقة
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0), // زوايا دائرية
      ),
      margin: EdgeInsets.all(8.0),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: titleColor, // تعيين لون العنوان
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              subtitle,
              style: TextStyle(
                fontSize: 14.0,
                color: subtitleColor, // تعيين لون الوصف
              ),
            ),
            SizedBox(height: 16.0),
            Row(
              children: [
                Icon(Icons.star, color: ratingColor), // تعيين لون التقييم
                SizedBox(width: 4.0),
                Text(
                  rating.toString(),
                  style: TextStyle(fontSize: 16.0, color: titleColor),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;
  final Color color;

  SectionTitle({required this.title, this.color = Colors.black});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
          color: color,
        ),
      ),
    );
  }
}

class CourseDetailPage extends StatelessWidget {
  final String title;

  CourseDetailPage({required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Course Details',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
            Text(
              'Course content goes here...',
              style: TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }
}

class CyberSecurityDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 50, 5, 58),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 50, 5, 58),
        title: const Text(
          'Cyber Security Course',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // صورة الدورة
            ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: Image.network(
                'https://raw.githubusercontent.com/MaysaaAbuRahma/Add-images/main/Cyber%20security%20image%20_%20Global%20security%20_%20Protecting%20devices.jpeg',
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 20),

            // عنوان الدورة
            const Text(
              'Cyber Security Fundamentals',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10),

            // وصف الدورة
            const Text(
              'Learn the basics of cyber security, including how to protect systems, networks, and data from digital attacks. This course covers essential topics such as encryption, network security, and threat management.',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.white70,
              ),
            ),
            SizedBox(height: 20),

            // تفاصيل الدورة
            const Row(
              children: [
                Icon(Icons.access_time, color: Colors.blueAccent),
                SizedBox(width: 8),
                Text(
                  '6 Hours',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: 20),
                Icon(Icons.star, color: Colors.amber),
                SizedBox(width: 8),
                Text(
                  '4.5/5',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),

            // محتوى الدورة
            const Text(
              'Course Content:',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10),
            _buildCourseContentItem('1. Introduction to Cyber Security'),
            _buildCourseContentItem('2. Understanding Cyber Threats'),
            _buildCourseContentItem('3. Network Security Basics'),
            _buildCourseContentItem('4. Encryption and Data Protection'),
            _buildCourseContentItem('5. Threat Detection and Response'),
            SizedBox(height: 20),

            // زر البدء بالدورة
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // يمكنك إضافة وظيفة هنا لبدء الدورة
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Course Started!'),
                      backgroundColor: Colors.green,
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                child: const Text(
                  'Start Course',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // وظيفة مساعدة لعرض عناصر محتوى الدورة
  Widget _buildCourseContentItem(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          const Icon(Icons.play_circle_fill, color: Colors.blueAccent),
          SizedBox(width: 8),
          Text(
            title,
            style: const TextStyle(
              fontSize: 16.0,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
