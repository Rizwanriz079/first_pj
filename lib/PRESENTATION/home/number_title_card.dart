import 'package:flutter/cupertino.dart';

import '../appbar/main_title.dart';
import 'number_card.dart';

class NumberTitleCard extends StatelessWidget {
  const NumberTitleCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        main_title(titles: "Top 10 Tv Shows In India Today"),
        LimitedBox(
          maxHeight: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children:
            List.generate(10, (index) => NumberCard(index: index,),),

          ),
        ),
      ],
    );
  }
}
