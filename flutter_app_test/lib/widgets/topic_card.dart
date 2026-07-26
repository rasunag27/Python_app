import 'package:flutter/material.dart';

class TopicCard extends StatelessWidget {

  final String title;
  final IconData icon;
  final Color color;
  final VoidCallback onTap;

  const TopicCard({
    super.key,
    required this.title,
    required this.icon,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {

    return Card(

      elevation: 5,

      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),

      child: InkWell(

        borderRadius: BorderRadius.circular(20),

        onTap: onTap,

        child: Padding(

          padding: const EdgeInsets.all(18),

          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,

            children: [

              CircleAvatar(

                radius: 30,

                backgroundColor: color.withOpacity(.15),

                child: Icon(
                  icon,
                  color: color,
                  size: 32,
                ),
              ),

              const SizedBox(height: 18),

              Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}