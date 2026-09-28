import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        // Цвет фона всего приложения
        backgroundColor: Colors.grey[300],

        // Верхняя панель приложения
        appBar: AppBar(
          title: const Text(
            'Lab 3: Layout Basics',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.teal,
        ),

        // Основная часть приложения
        body: Padding(
          padding: const EdgeInsets.all(16),

          child: Column(
            children: [

              Container(
                width: double.infinity,

                // Внутренний отступ
                padding: const EdgeInsets.all(16),

                decoration: BoxDecoration(
                  // Синий цвет фона
                  color: Colors.blue,

                  // Скругление углов
                  borderRadius: BorderRadius.circular(12),

                  // Тень
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(2, 2),
                      blurRadius: 6,
                      color: Colors.black.withOpacity(0.2),
                    ),
                  ],
                ),

                // Текст по центру
                child: const Center(
                  child: Text(
                    'Welcome to Flutter!',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              // Расстояние между контейнерами
              const SizedBox(
                height: 16,
              ),

              
              Container(
                width: double.infinity,

                // Внутренние отступы:
                // 12 сверху и снизу,
                // 20 слева и справа
                padding: const EdgeInsets.symmetric(
                  vertical: 12,
                  horizontal: 20,
                ),

                decoration: BoxDecoration(
                  // Зеленый цвет фона
                  color: Colors.green,

  
                  borderRadius: BorderRadius.circular(8),

                 
                  border: Border.all(
                    color: Colors.white,
                    width: 2,
                  ),
                ),

                // Два текста располагаются по краям
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Text(
                      'Left Text',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),

                    Text(
                      'Right Text',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}