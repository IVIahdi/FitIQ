import 'package:flutter/material.dart';

const boxsColor = Color(0xffD3D001);
const containerToCalculate = Color(0xffB4A730);
const selectedGenderColor = Color(0xff8F8D05);
const styiling = TextStyle(fontSize: 25, color: Colors.black);
const addedSizedBox = SizedBox(
  height: 20,
);
int inHeight = 150;
int inWeight = 80;
int inAge = 30;
const labelStyle =
    TextStyle(fontSize: 25, color: Colors.black, fontWeight: FontWeight.w900);
const numbersLabelStyle = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 50,
);

const headers = TextStyle(fontSize: 18, color: Colors.black,fontWeight: FontWeight.bold);
class myButton extends StatelessWidget {
  final icon2;
  final plusminus;

  const myButton({this.icon2, this.plusminus});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.black,
      hoverColor: Colors.white10,
      onPressed: plusminus,
      child: Icon(icon2, color: Colors.white,),
    );
  }
}


const klastColStyle = TextStyle(color: Colors.black, fontSize: 35,fontFamily: 'Lob');
const kResultNumber = TextStyle(
  color: Colors.white70,
  fontSize: 80,
  fontWeight: FontWeight.bold
);

const kLastResult = TextStyle(
  color: Color(0xffF7DC6F),
  fontWeight: FontWeight.bold,
  fontSize: 15
);

const kYourResultStyle = TextStyle(
  color: Colors.white,
  fontSize: 40,
  fontWeight: FontWeight.bold
);
