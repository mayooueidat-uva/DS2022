#!/bin/bash

clear 
echo "Let's build a mad-lib!" 
read -p "1. Name an unusual sport: " NOUN1 
read -p "2. Name an eccentric colour: " ADJ1 
read -p "3. What would you never name your child ever?: " NOUN2 
read -p "4. Name a video game character you have ambivalent feelings towards: " NOUN3 
read -p "5. Name a food you hate: " NOUN4 
read -p "6. Name the time of day where you begin to derealise: " NOUN5 
read -p "7. What do you do in response to fear? Write in present participle tense.: " VERB1
read -p "8. What animal are you most irrationally afraid of? Write in plural form.: " NOUN6 
read -p "8.5 What is the singular form of the name of this animal?: " NOUN7 
read -p "9999. How would you feel if you've heard some Bash users started a Linux cult where they suggested its members would be Bourne Again from their mortal Shells?: " ADJ2 

echo "Right after a work meeting, $NOUN3 invited $NOUN2 to get some $NOUN4 from the local market with them to celebrate what they'd accomplished. To the the surprise of $NOUN3, $NOUN2 responded with fear." | fold -s
echo "'Why are you so scared, $NOUN2? We're literally just getting $NOUN4,' groaned $NOUN3, impatiently tapping their fingers on the office table." | fold -s 
echo "'We shouldn't be going out at $NOUN5!' retorted $NOUN2 sharply. 'Th...that's when the $NOUN6 come out.' $NOUN2's hand shook as they lifted their coffee to drink." | fold -s 
echo "$NOUN3 let out a hearty laugh. 'This town hasn't seen $NOUN6 in ten years. Why would they suddenly be appearing again today?'" | fold -s
echo "'Inductive reasoning doesn't work, you blundering idiot.' $NOUN2 slammed their now-empty mug onto the table (surprisingly, it didn't break), and frustration hardened their expression." | fold -s 
echo "$NOUN3 cocked their head to one side, contemplating $NOUN2's rationale for a moment." | fold -s
echo "They then let out a dismissive snicker. 'Reasoning schmeasoning. You are always so irrationally rational about everything. We need to enjoy the rest of our day.'" | fold -s 
echo "$NOUN2 let out an exasperated sigh. 'Alright. If you say so.'"
echo "..." 
echo "..." 
echo "$NOUN3 and $NOUN2 were walking to the market. It was quite a lovely day, with blue skies and sun rays filtering playfully from the clouds." | fold -s
echo "Some folks in the park were playing $NOUN1. (A bit of an odd choice, but commendable.) A street saxophonist played a tune." | fold -s
echo "'The market's that way,' said $NOUN3 to $NOUN2, pointing towards a quaint set of historic buildings just beyond the park."| fold -s
echo "..."
echo "$NOUN2 opened the market's $ADJ1 door. Suddenly, they started $VERB1." 
echo "'What's wrong?' $NOUN3 sneered. 'Scared you'll see a-'" 
echo "$NOUN3 froze when they noticed the cashier." 
echo "'A $NOUN7!' they shrieked. 'NO, NO, NO, NO, NO!'" 
echo "The $NOUN7 stared at them. 'People like you make me feel $ADJ2. It's so strange you act like this when I mean no harm.'" | fold -s
echo "Neither of them listened. $NOUN2 continued $VERB1, and $NOUN3 reached into their pocket for their phone to call the Creature Control and Investigation Services." | fold -s
