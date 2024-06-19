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
        title: Text('Pembayaran'),
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
                          'assets/images/pin.png',
                          height: 24,
                          width: 24,
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: 'Pilih opsi pembayaran',
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
              Text('Pembayaran Tersedia',
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
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
                color: Color(0xFFFCFBF7),
                borderRadius: BorderRadius.circular(7)
            ),
            child: IntrinsicHeight(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: [
                            Image.asset('assets/images/gopay.png'),
                            SizedBox(width: 5,),
                            Text('Gopay',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            ),
                          ],
                        ),
                        //Text(data)
                        Text('Minimum pembelian Rp10000',
                          style: TextStyle(
                            color: Color(0xFF6B6969),
                            fontSize: 12,
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            Image.asset('assets/images/dollar.png',
                            width: 16,
                            height: 16,),
                            Text('Tanpa biaya admin',
                              style: TextStyle(
                                color: Color(0xFF6B6969),
                                fontSize: 12,
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
                      'assets/images/check.png',
                      height: 24,
                      width: 24,),
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 10),
          Container(
            width: 350,
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
                color: Color(0xFFFCFBF7),
                borderRadius: BorderRadius.circular(7)
            ),
            child: IntrinsicHeight(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: [
                            Image.asset('assets/images/shopee.png'),
                            SizedBox(width: 5,),
                            Text('Shopeepay',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            ),
                          ],
                        ),
                        //Text(data)
                        Text('Minimum pembelian Rp10000',
                          style: TextStyle(
                            color: Color(0xFF6B6969),
                            fontSize: 12,
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            Image.asset('assets/images/dollar.png',
                              width: 16,
                              height: 16,),
                            Text('Rp. 500',
                              style: TextStyle(
                                color: Color(0xFF6B6969),
                                fontSize: 12,
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
                      'assets/images/check.png',
                      height: 24,
                      width: 24,),
                  )
                ],
              ),
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
                child: Text('KONFIRMASI PEMBAYARAN',
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