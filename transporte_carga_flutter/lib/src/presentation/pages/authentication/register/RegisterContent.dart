import 'package:flutter/material.dart';
import 'package:transporte_carga_flutter/src/presentation/widgets/CustomButton.dart';
import 'package:transporte_carga_flutter/src/presentation/widgets/CustomTextFieldOpacity.dart';

class RegisterContent extends StatelessWidget {
  const RegisterContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
        ),
        Container(
          margin: EdgeInsets.only(left: 20, top: 40, bottom: 40, right: 20),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color.fromARGB(255, 255, 255, 255,),
                Color.fromARGB(255, 255, 255, 255),
              ],
            ),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.black, width: 0.5),
          ),
          child: Container(
            margin: EdgeInsets.only(left: 25, right: 25),
            child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _imageBanner(),
                    _text(
                    'Registro',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                    CustomTextFieldOpacity(
                      text: 'Nombre',
                      icon: Icons.person_outlined
                    ),
                    CustomTextFieldOpacity(
                      text: 'Apellidos', 
                      icon: Icons.person_2_outlined,
                    ),
                    CustomTextFieldOpacity(
                      text: 'Email', 
                      icon: Icons.email_outlined,
                    ),
                    CustomTextFieldOpacity(
                      text: 'Telefono', 
                      icon: Icons.phone_outlined,
                    ),
                    CustomTextFieldOpacity(
                      text: 'Contraseña', 
                      icon: Icons.lock_outline,
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.12),
                    CustomButton(
                      text: 'Crear Usuario',
                      ),
                      _textAlreadyHaveAccount(context),
                      Center(
                    child: _iconGmail(),
                  ),
                  SizedBox(height: 30),
                  ],
                ),
              ),
          ),
        ),
      ],
    );
  }

  Widget _iconGmail() {
    return Container(
      margin: EdgeInsets.only(top: 10),
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        border: Border.all(color: Colors.black, width: 0.5),
      ),
      child: Center(
        child: Icon(
          Icons.email, // sin color personalizado
          size: 30,
        ),
      ),
    );
  }

  Widget _text(
    String text, {
    double fontSize = 24,
    FontWeight fontWeight = FontWeight.bold,
    Color color = Colors.black,
  }) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        color: color,
        fontWeight: fontWeight,
      ),
    );
  }
  
  /*
  Widget _imageBackground(BuildContext context){
    return Container(
      alignment: Alignment.bottomCenter,
      margin: EdgeInsets.only(bottom: 50),
      child: Image.asset(
        'assets/img/destination.png',
        width: MediaQuery.of(context).size.width * 0.6,
        height: MediaQuery.of(context).size.height * 0.4,
        opacity: AlwaysStoppedAnimation(0.3),
      ),
    );
  }
  */ 


  Widget _imageBanner(){
    return Container(
      margin: EdgeInsets.only(top: 10),
      alignment: Alignment.center,
      child: Image.asset(
        'assets/img/logotraxxo.png',
        width: 200,
        height: 200,
      ),
    );
  }

  Widget _textAlreadyHaveAccount(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '¿Ya tienes cuenta?',
          style: TextStyle(color: Colors.black, fontSize: 15),
        ),
        SizedBox(width: 7),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, 'login');
          },
          child: Text(
            'Inicia Sesión',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
        ),
      ],
    );
  }

}