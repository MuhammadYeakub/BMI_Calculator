import 'package:flutter/material.dart';

class Result_page extends StatefulWidget {
  //const Result_page({super.key});

  String bmi_result;
  Result_page({required this.bmi_result});

  @override
  State<Result_page> createState() => _Result_pageState();
}

class _Result_pageState extends State<Result_page> {
  String result = '';
  String advice ='';

  late Color color;

  condition(){
    if(double.parse(widget.bmi_result) < 18.5){
      setState(() {
        result = 'Underweight';
        advice ='Beshi kore khao';
        color= Colors.yellow;
      });
    }
    else if(double.parse(widget.bmi_result) < 24.9){
      setState(() {
        result = 'Normal weight ';
        advice ='Thik ache';
        color= Colors.blue;
      });
    }
    else if(double.parse(widget.bmi_result) < 30 ){
      setState(() {
        result = 'Overweight Stage-1';
        advice ='Maintain a balanced diet';
        color= Colors.cyanAccent;
      });
    }
    else if(double.parse(widget.bmi_result) < 35 ){
      setState(() {
        result = 'Overweight Stage-2';
        advice ='Consider consulting a nutritionist and adopting healthier eating habits';
        color= Colors.cyanAccent;
      });
    }
    else if(double.parse(widget.bmi_result) < 40 ){
      setState(() {
        result = 'Overweight Stage-3';
        advice ='Seek medical advice and make significant lifestyle changes';
        color= Colors.cyanAccent;
      });
    }
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    condition();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff013129),
        title: Center(
          child: Text("BMI Calculator",
            style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(

          height:MediaQuery.of(context).size.height ,
          width: MediaQuery.of(context).size.width,
          color: Color(0xff2F2F2F),
          child: Column(
            children: [
              SizedBox(height: 15,),
              Text("Result",
                style: TextStyle(fontSize: 40,color: Color(0xffffffff),fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 30,),
              Container(
                height: 350,
                width: 350,
                padding: EdgeInsets.all(20), 
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(result ,
                      style: TextStyle(
                        color: Colors.white,fontWeight: FontWeight.bold,fontSize: 35,
                      ),
                    ),
                    Text(widget.bmi_result,
                      style: TextStyle(
                          color: Colors.white,fontSize: 30
                      ),
                    ),
                    Text(advice,
                      style: TextStyle(
                          color: Colors.white,fontSize: 35
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40,),
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Color(0xff013129),
                ),
                onPressed: (){
                  Navigator.pop(context);

                },
                child: Text("Re-Calculate",
                  style: TextStyle(
                      fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold
                  ),
                ),

              )

            ],
          ),
        ),
      ),
    );
  }
}