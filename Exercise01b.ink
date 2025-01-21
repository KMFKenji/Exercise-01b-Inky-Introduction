/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Basic Choices
 - Knot structure
 - Recurring choices
 - Conditionals in descriptions
 - Conditionals in choices
 
 In the assignment:
 - Add four more knots (and feel free to change any of the example text, this is YOUR story)
 - Add at least one more conditional
*/

bottom_of_the_sea

== bottom_of_the_sea ==
You are at the bottom of the sea with you only seeing a lantern on an abandoned ship.
+Move towards the abandoned ship-> Abandon_ship
+Try to swim up-> Middle_of_the_Sea

== Abandon_ship ==
You are at the abandoned ship.{not lantern_pickup: A lantern lies on the floor.}
*[pick up the lantern]-> lantern_pickup
+[Enter the ship]-> Inside_ship
+[Go back]-> bottom_of_the_sea

== Middle_of_the_Sea ==
You are now at the middle of the sea.
+Try to swim deeper-> Deep_Sea_Cave
+[Go back]-> bottom_of_the_sea

== Deep_Sea_Cave ==
You have entered a dark cave. Strange noises echo around you.
+Keep exploring-> Secret_Chamber
+[Swim back]-> Middle_of_the_Sea

== Inside_ship ==
The ship is filled with rusted treasures and broken relics.
{lantern_pickup: The lantern reveals a hidden passage.}
+Search for treasure-> Treasure_Room
+[Leave the ship]-> bottom_of_the_sea

== lantern_pickup ==
You pick up the lantern. It feels oddly warm.
*[Go back]-> bottom_of_the_sea

== Treasure_Room ==
You have discovered a room filled with gold and jewels.
+Take some treasure-> END
+[Leave it and go back]-> Inside_ship

== Secret_Chamber ==
You have found an ancient artifact resting on a pedestal.
+Take the artifact-> END
+[Leave it and go back]-> Deep_Sea_Cave

== Bright_Abandon_Ship ==
The light from the lantern shines upon a golden boot.
-> END

