import 'package:flutter/material.dart';
import 'package:bmi_calculator/data_collect.dart';

class First_page extends StatefulWidget {
  const First_page({super.key});

  @override
  State<First_page> createState() => _First_pageState();
}

class _First_pageState extends State<First_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(

            color: const Color.fromARGB(3, 8, 74, 1),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                const Text("BMI",
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 50, color: Color.fromARGB(100 ,0 ,35 ,107),),
                  ),
                  Text("Calculator",
                    style: TextStyle(fontSize: 40,color: Color.fromARGB(100 ,0 ,35 ,107),fontWeight: FontWeight.bold),
                  ),
                  Image(
                    height: 200,
                    width: 200,
                    image: NetworkImage("https://thumbs.dreamstime.com/z/bmi-body-mass-index-icon-illustration-bmi-body-mass-index-icon-illustration-vector-157560949.jpg"),
                  ),
                  SizedBox(height: 100,),

                  TextButton(

                      style: TextButton.styleFrom(
                        backgroundColor: Color.fromARGB(100, 1, 77, 66),shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(9),),
                      ),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Data_collection()));
                      },
                      child: Text("START",
                        style: TextStyle(color: Colors.white,fontSize: 30),
                      )
                  )


                ],
              ),
            ),
            ),
        );
   }
}