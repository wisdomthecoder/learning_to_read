import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:learning_to_read/data/data.dart';
import 'package:learning_to_read/styles/textstyles.dart';

class Page01 extends StatelessWidget {
  Page01({super.key});
  String bodyText =
      '''Rhyming words are words that have the same ending sound.  Using it to teach learning to read is interesting. Here are some suggestions on how to effective use the book.
1. Use a good dictionary to check the meaning(s) of each of the word. 
2. Guide the students to form more sentences from the words as you explain the meaning of the words.
3. Create flash cards or pictures for the words.
4. Read through each column before reading through the rows.
5. As you read the columns, take note of the onset (beginning consonant(s), peak (medial vowel(s)) and coda (final consonant(s)) in the words. 
6. Use the strategies for teaching the rhyming words.
7. When reading words, pay less attention on meaning (s). This could be done later.
8. Do not correct students' pronunciation mistakes very often while they are reading. Correction should not distract student from his or her reading.
9. Provide or tell the students the columns or rows they are to read beforehand so that can practice it at home.
10. Diagnose problems faced by learners who have difficulty in reading and provide more opportunities to for them.
11. Prepare useful illustration and drawings that can be used in the teaching the rhyming words.
12. Let the pupils read line by line after you.
13. Encourage choral reading, group reading, and responsive
14. The words in capital letters are either names of person or places.
''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          content[0].name,
          style: mediumText,
        ),
      ),
      body: InteractiveViewer(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: SelectableText(
            bodyText,
            style: smallTextWithWidth,
          ),
        ),
      ),
    );
  }
}
