import 'package:flutter/material.dart';
import 'package:bmi_calculator/final_page.dart';

class Data_collection extends StatefulWidget {
  const Data_collection({super.key});

  @override
  State<Data_collection> createState() => _Data_collectionState();
}

class _Data_collectionState extends State<Data_collection> {

  double height = 0.0;
  int weight = 50;
  int age =25 ;

  double bmi =0.0;
  bmi_calculation(){
    setState(() {
      bmi = (weight/((height/100)*(height/100)));
    });
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

          color: Color(0xff2F2F2F),
          child: Column(
            children: [
                
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          color: Colors.black,
                          height: 200,
                          width: 150,
                          child: Column(
                            
                            children: [
                              Icon(
                                Icons.male,
                                color: Color(0xffFF5F5F),
                                size: 100,
                              ),
                              Text(
                                "Male",
                                style: TextStyle(
                                  color: Color(0xffFF5F5F),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 28,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          color: Colors.black,
                          height: 200,
                          width: 150,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.female,
                                color: Color(0xffFF5F5F),
                                size: 100,
                              ),
                              Text(
                                "Female",
                                style: TextStyle(
                                  color: Color(0xffFF5F5F),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 28,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),


              SizedBox(height: 10,),
              Container(
                height: 200,
                width: 370,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    Text(
                      "Height",
                      style: TextStyle(color: Color(0xffFF5F5F), fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        labelText: "Height",
                        labelStyle: TextStyle(color: Color.fromARGB(100, 255, 255, 255), fontSize: 19),
                        hintStyle: TextStyle(color: Color.fromARGB(100, 255, 255, 255)),
                      ),
                      keyboardType: TextInputType.number,
                      onChanged: (input) {
                        height = double.parse(input);
                      },
                      style: TextStyle(color: Colors.white70, fontSize: 20),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 10,),

              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      height: 180,
                      width: 170,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(30), // Adjust the radius as needed
                      ),
                      child: Column(
                        children: [
                          Text(
                            "Weight",
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28, color: Color.fromARGB(100, 255, 255, 255)),
                          ),
                          Text(
                            weight.toString(),
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                            ),
                          ),
                          Row(
                            children: [
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                icon: Icon(
                                  Icons.add,
                                  size: 50,
                                  color: Colors.white,
                                ),
                              ),
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                                icon: Icon(
                                  Icons.remove,
                                  size: 50,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      height: 180,
                      width: 170,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(30), // Adjust the radius as needed
                      ),
                      child: Column(
                        children: [
                          Text(
                            "Age",
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28, color: Color.fromARGB(100, 255, 255, 255)),
                          ),
                          Text(
                            age.toString(),
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                            ),
                          ),
                          Row(
                            children: [
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                                icon: Icon(
                                  Icons.add,
                                  size: 50,
                                  color: Colors.white,
                                ),
                              ),
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                                icon: Icon(
                                  Icons.remove,
                                  size: 50,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15,),
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Color(0xff013129),

                ),
                onPressed: (){
                  bmi_calculation();
                  Navigator.push(context, MaterialPageRoute(builder: (Context)=>Result_page(bmi_result: bmi.toString()
                    ,)));
                },
                child: Text("CALCULATE",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 30,color: Colors.white
                    )
                ),
              ),
              SizedBox(height: 50,)

            ],
          ),
        ),
      ),
    );
  }
}