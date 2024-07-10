import 'package:flutter/material.dart';

class WeatherInfoBody extends StatelessWidget {
  const WeatherInfoBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Alexandria",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
        ),
        const Text(
          "Updated at:23:46",
          style: TextStyle(fontSize: 22),
        ),
        const SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset("assets/rainy.png"),
            const Text(
              "17",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            const Column(
              children: [
                Text(
                  "Max Temp:17",
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  "Min Temp:12",
                  style: TextStyle(fontSize: 18),
                )
              ],
            )
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        const Text(
          "Light Rain",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        )
      ],
    );
  }
}
