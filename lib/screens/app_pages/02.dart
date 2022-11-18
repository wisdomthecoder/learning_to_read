import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:learning_to_read/data/data.dart';
import 'package:learning_to_read/styles/image.asset.dart';
import 'package:learning_to_read/styles/textstyles.dart';
import 'package:learning_to_read/styles/theme.dart';
import 'package:learning_to_read/widget/selectable_text.dart';

class Page02 extends StatelessWidget {
  var assetDir = 'assets/image/2/';
  Page02({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          content[1].name,
          style: mediumText,
        ),
      ),
      body: InteractiveViewer(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                selectableText(
                  text:
                      'A short vowel sound is a vowel that is sounded with a shorter duration. Most words that have short vowel sounds are words that contain initial Consonant, medial Vowel and final Consonant (CVC). This section treats the short vowel sounds with their examples beginning from Column 1- 100',
                ),
                imageAsset(assetDir, '1tbl.png'),
                imageAsset(assetDir, '2tbl.png'),
                selectableText(text: '''1. Amaka gave Halima a fan and a pan.
        2. Sam had a black rag bag and a stamp pad.
        3. Samuel sat on the back of a black ram. 
        4. Ada, Ade, Ayo, and Ata are angry.
        6.  Lafia is the capital of Nasarawa state'''),
                imageAsset(assetDir, '3tbl.png'),
                selectableText(
                    text: '''1. Abubakir and Adama had left before Ada came.
        2. An ant on my arm is causing me alarm.
        3. Jack and Garba are sitting on a bag of sand.
        4. The man wants to catch the black fat rat.
        5. Harry bought a fan and a hat in the market.
        6. Adaku put her bag on the long table.
        7. Jamila and Jamilu kept their money in a bank.
        8. There are crabs on the tank that jamilu bought. 
        9. Clara has a brand new car last week.
        10. My daddy is sad with the wicket madman.
        11. Asabar and Asabe live in Asaba.
        12. Amina and Aminu are eating banana.'''),
                imageAsset(assetDir, '4tbl.png'),
                imageAsset(assetDir, '5tbl.png'),
                imageAsset(assetDir, '6tbl.png'),
                selectableText(
                    text: '''1. Nelson and Terry sells shell near the well.
      2.  Brenda sat on the long bench and wept bitterly.
      3. Elder Elvis edited Edina’s grammar errors. 
      4. Glenda and Felix fetch water every day.
      5. Helen lent me her red pen and pencil.
      6. Elizabeth’s red hens have ten eggs each.
      7. My six guests went to rest in veronica’s room.
      8. The greatest wealth of man is his health.'''),
                imageAsset(assetDir, '7tbl.png'),
                imageAsset(assetDir, '8tbl.png'),
                imageAsset(assetDir, '10tbl.png'),
                selectableText(text: '''1. Edina went to mend her broken pot.
      2. Ezekiel, Elicah, and Jezebel are resting.
      3. Veronicah kept her Semovita in nears a net. 
      4. Elcanah held a bag of grain in her hand.
      5. Clementina and Celestina left before Edna came.
      6.  Emeka visited Ebere and Elam in Edo.
      7. Helon and stella are both healthy and wealthy.
      '''),
                imageAsset(assetDir, '11tbl.png'),
                selectableText(
                    text: '''1. The big fish uses its gill swim in the river.
      2. Sylvana’s big pig fell into a shallow pit.
      3. Linda put the six thin fish in a dish.
      4. The twin wish to kill the sixty-six pig on the hill.
      5. Sidi can lift the pink pan in the kitchen'''),
                imageAsset(assetDir, '12tbl.png'),
                // imageAsset(assetDir, '13tble.png'),
                // imageAsset(assetDir, '14tble.png')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
