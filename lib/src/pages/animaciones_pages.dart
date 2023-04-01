import 'package:flutter/material.dart';
import 'dart:math' as math;

class AnimacionesPage extends StatelessWidget {
  const AnimacionesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: CuadradoAnimado()),
    );
  }
}

class _Rectangulo extends StatelessWidget {
  const _Rectangulo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      decoration: const BoxDecoration(color: Colors.blue),
    );
  }
}

class CuadradoAnimado extends StatefulWidget {
  const CuadradoAnimado({
    Key? key,
  }) : super(key: key);

  @override
  State<CuadradoAnimado> createState() => _CuadradoAnimadoState();
}

class _CuadradoAnimadoState extends State<CuadradoAnimado>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
   late Animation<double> rotacion ;
  @override
  void initState() {
    controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 4000));
    rotacion = Tween(begin: 0.0, end: 2 * math.pi).animate(
      CurvedAnimation(parent: controller, curve: Curves.easeOut)
    );

    controller.addListener(() {
      print("Status: ${controller.status}");
      if( controller.status == AnimationStatus.completed){
        controller.reset();
      } 
    });

    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    controller.forward();

    return AnimatedBuilder(
      animation: controller,
      //child: child,
      builder: (BuildContext context, Widget? child) {
    
  
        return Transform.rotate(
          angle: rotacion.value,
          child: const _Rectangulo());
      },
    );
  }
}
