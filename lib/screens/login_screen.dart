import 'package:bronnis/main.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size= MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.cyan,
        child: Stack(
          children: [
            SizedBox(
              height: size.height*0.4,
              width: size.width,
              child: Image.asset('assets/logo.png')
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 300),
                  Container(
                    padding: const EdgeInsets.all(20),
                    margin: const EdgeInsets.symmetric(horizontal: 30),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                            offset: Offset(10, 5),
                            blurRadius: 15,
                          )
                        ]
                    ),
                    child: Column(
                      children: [
                        const SizedBox(height: 10),
                        Text('Login', style: Theme.of(context).textTheme.headline4,),
                        const SizedBox(height: 30,),
                        Form(
                          child: Column(
                            children: [
                              TextFormField(
                                autocorrect: false,
                                decoration: const InputDecoration(
                                    enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(color: Colors.black)),
                                    hintText: "Usuario",
                                    labelText: "Ingrese su Usuario",
                                    prefixIcon: Icon(Icons.account_circle)
                                ),
                              ),
                              const SizedBox(height: 30,),
                              TextFormField(
                                autocorrect: false,
                                obscureText: true,
                                decoration: const InputDecoration(
                                    enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(color: Colors.black)),
                                    hintText: "***********",
                                    labelText: "Contraseña",
                                    prefixIcon: Icon(Icons.lock_outline),
                                ),

                              ),
                              const SizedBox(height: 30,),
                              MaterialButton(
                                onPressed: (){
                                  Navigator.pushReplacementNamed(context, 'Home');
                                },
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),),
                                disabledColor: Colors.grey,
                                color: Colors.cyan,
                                child: Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 80,vertical: 15),
                                  child: const Text('Ingresar',style: TextStyle(color: Colors.white) ,),
                                ),
                              )
                              
                            ],
                          ),
                        )
                      ],
                    ),),
                ],

              ),
            ),
          ],
        )
      ),
    );
  }
}
