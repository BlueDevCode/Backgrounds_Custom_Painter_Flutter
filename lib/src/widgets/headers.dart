import 'package:flutter/material.dart';

class HeaderCuadrado extends StatelessWidget {
  const HeaderCuadrado
({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      color: const Color.fromARGB(255, 74, 66, 164),
    );
  }
}
class HeaderBorderRedondeado extends StatelessWidget {
  const HeaderBorderRedondeado
({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
        
    
      decoration: const BoxDecoration(
          color: Color.fromARGB(255, 28, 11, 215),
        borderRadius: BorderRadius.only(
          bottomLeft:Radius.circular(70),
          bottomRight:Radius.circular(70)
          ),
        

      ),
    );
  }
}
class HeaderDiagonal extends StatelessWidget {
  const HeaderDiagonal
({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      //color: const Color.fromARGB(255, 74, 66, 164),
      child: CustomPaint(
        painter:_HeaderDiagonalPainter() ,
        ),
    );
  }
}
class _HeaderDiagonalPainter extends CustomPainter{
  @override
  void paint (Canvas canvas, Size size){

    final lapiz = Paint();
    lapiz.color = const Color(0xff615AAB);
    lapiz.style = PaintingStyle.fill;
    lapiz.strokeWidth = 2;
    
    final path = new Path();
    path.moveTo( 0, size.height * 0.35 );
    path.lineTo(size.width, size.height * 0.30);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    //path.lineTo(0,size.height * 0.5);
    canvas.drawPath(path, lapiz);
  }
  @override  
  bool shouldRepaint(CustomPainter oldDelegate){
    return true;
  }

}
class HeaderTriangular extends StatelessWidget {
  const HeaderTriangular
({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      //color: const Color.fromARGB(255, 74, 66, 164),
      child: CustomPaint(
        painter:_HeaderTriangularPainter() ,
        ),
    );
  }
}
class _HeaderTriangularPainter extends CustomPainter{
  @override
  void paint (Canvas canvas, Size size){

    final lapiz = Paint();
    lapiz.color = const Color.fromRGBO(10, 5, 57, 1);
    lapiz.style = PaintingStyle.stroke;
    lapiz.strokeWidth = 2;
    
    final path = Path();
    
    path.lineTo(size.width,size.height);
    //path.lineTo( 0, 0);
    //path.lineTo(size.width, 0);
    canvas.drawPath(path, lapiz);
  }
  @override  
  bool shouldRepaint(CustomPainter oldDelegate){
    return true;
  }



}
class HeaderPico extends StatelessWidget {
  const HeaderPico
({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
    
      child: CustomPaint(
        painter:_HeaderPicoPainter() ,
        ),
    );
  }
}
class _HeaderPicoPainter extends CustomPainter{
  @override
  void paint (Canvas canvas, Size size){

    final lapiz = Paint();
    lapiz.color = const Color.fromARGB(255, 68, 147, 226);
    lapiz.style = PaintingStyle.fill;
    lapiz.strokeWidth = 20;
    
    final path = Path();
    
    path.lineTo(0, size.height * 0.20);
    path.lineTo(size.width * 0.5, size.height * 0.28);
    path.lineTo(size.width, size.height * 0.20);
    path.lineTo(size.width, 0);
    canvas.drawPath(path, lapiz);
  }
  @override  
  bool shouldRepaint(CustomPainter oldDelegate){
    return true;
  }



}
class HeaderCurvo extends StatelessWidget {
  const HeaderCurvo
({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
    
      child: CustomPaint(
        painter:_HeaderCurvoPainter() ,
        ),
    );
  }
}
class _HeaderCurvoPainter extends CustomPainter{
  @override
  void paint (Canvas canvas, Size size){

    final lapiz = Paint();
    lapiz.color = const Color.fromARGB(255, 50, 59, 244);
    lapiz.style = PaintingStyle.fill;
    lapiz.strokeWidth = 20;
    
    final path = Path();
    
    path.lineTo(0, size.height * 0.25);
    path.quadraticBezierTo(size.width * 0.50, size.height * 0.20, size.width, size.height * 0.25);
    path.lineTo(size.width , 0);

    canvas.drawPath(path, lapiz);
  }
  @override  
  bool shouldRepaint(CustomPainter oldDelegate){
    return true;
  }



}
class HeaderWave extends StatelessWidget {
  const HeaderWave
({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
    
      child: CustomPaint(
        painter:_HeaderWavePainter() ,
        ),
    );
  }
}
class _HeaderWavePainter extends CustomPainter{
  @override
  void paint (Canvas canvas, Size size){

    final lapiz = Paint();
    lapiz.color = const Color.fromARGB(255, 32, 12, 67);
    lapiz.style = PaintingStyle.fill;
    lapiz.strokeWidth = 20;
    
    final path = Path();
    
    path.lineTo(0, size.height * 0.25);
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.30, size.width * 0.5, size.height * 0.25);
    path.quadraticBezierTo(size.width * 0.75, size.height * 0.20, size.width, size.height * 0.25);
    path.lineTo(size.width , 0);

    canvas.drawPath(path, lapiz);
  }
  @override  
  bool shouldRepaint(CustomPainter oldDelegate){
    return true;
  }



}
