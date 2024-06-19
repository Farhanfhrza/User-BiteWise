import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2EDE8),
      appBar: AppBar(
        backgroundColor: Color(0xFFFCFBF7),
        title: Text('Pilihan Program'),
        leading: IconButton(
          icon : Image.asset('assets/images/Back1.png'),
          onPressed: (){
            print('Back button pressed');
          },
        ),
      ),
      body: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 100,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Color(0xFFFCFBF7),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 4,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  )
                ]
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                      height: 60,
                      decoration: BoxDecoration(
                        color: Color(0xFFF2EDE9),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        children: <Widget>[
                          Image.asset(
                            'assets/images/search.png',
                            height: 24,
                            width: 24,
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: 'Rekomendasi Makanan untuk Keluarga',
                                  border: InputBorder.none,
                                  hintStyle: TextStyle(color: Colors.grey)
                              ),
                            ),
                          )
                        ],
                      )
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Meal Plan Tersedia',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Color(0xFF6B6969),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
                SizedBox(height: 10),
                Container(
                  width: 350,
                  height: 100,
                  padding: EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                      color: Color(0xFFFCFBF7),
                      borderRadius: BorderRadius.circular(7)
                  ),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Dewasa Aktif, Nutrisi Tepat untuk Hidup Sehat',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          ),
                          //Text(data)
                          Row(
                            children: <Widget>[
                              Text('± 2500 kcal/hari  ',
                              style: TextStyle(
                                color: Color(0xFF6B6969),
                              ),
                              ),
                              Image.asset('assets/images/love.png')
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Image.asset('assets/images/fork.png'),
                              Text(' Meal Plan 7 hari',
                                style: TextStyle(
                                  color: Color(0xFF6B6969),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      ),
                      SizedBox(width: 20),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Color(0xFFF2EDE8),
                            borderRadius: BorderRadius.circular(30)
                        ),
                        child: Image.asset(
                          'assets/images/plus.png',
                          height: 24,
                          width: 24,),
                      )
                    ],
                  ),
                ),
        Spacer(),
        Padding(
          padding: EdgeInsets.all(10.0),
          child: SizedBox(
            width: 350,
            height: 50,
            child: ElevatedButton(
              onPressed: (){
                print('Tombol ditekan');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF21BA3B),
                padding: EdgeInsets.symmetric(vertical: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)
                )
              ),
              child: Text('BUAT PESANAN',
              style: TextStyle(
                color: Color(0xFFFFFFFF),
                fontSize: 20,
              ),),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/logo_bitewise.png'),
            Image.asset('assets/images/BiteWise.png')
          ],
        ),
        SizedBox(height: 10)
          ],
      ),

    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyWidget(),
  ));
}