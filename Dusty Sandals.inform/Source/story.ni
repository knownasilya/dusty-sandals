"Dusty Sandals" by "Ilya Radchenko"
Use American dialect, full-length room descriptions, and the serial comma.
Release along with the "Parchment" interpreter.

Talking to is an action applying to one visible thing. Understand "talk to [something]" as talking to.

Check talking to:
	say "You can't do that." instead.

[Plain Road]
The Plain Road is a room. "The narrow road meanders through the hillside, overlooking the valley, and pressed up against the mount. To the west the road continues on towards the city and to the east back to the village."

The plain valley is scenery in the Plain Road. The description is "The valley extends out and from here the city is visible."

The plain mount is scenery in the Plain Road. The description is "This side of the road is a mount, which rises upward out of your view."
Understand "hillside", "mountain" and "hill" as the plain mount.

The dusty road is scenery in the Plain Road. The description is "The road is well travelled and dusty."
Understand "road" and "dusty" as the dusty road.

The distant city is scenery in the Plain Road. The description is "The city lies in the distance, although it's hard to see from here, as it's across the valley."


Instead of going east in the Plain Road:
	say "There is nothing left for you in the village, except memories of the past."
	
	
	
[Road near the Garden]
The Road Near the Garden is west of the Plain Road. "This area looks more travelled, with trees scattered on one side and to the west there is a garden. The road to the village lies to the east."

The garden-trees are scenery in the Road Near the Garden. The description is "Many trees cover the hillside. The aroma they give off reminds you of olives."
Understand "tree", "scattered" and "olives" as the garden-trees.
Printed name of the garden-trees is "trees".

The distant-garden is scenery in the Road Near the Garden. The description is "The garden is in the distance."
Understand "garden" as the distant-garden.
The printed name is "garden".

After examining the distant-garden for the first time:
	Say "You notice a cluster of torches moving throught the garden west towards the city."


[Garden Entrance]
The Garden Entrance is west of the Road Near the Garden. "[if unvisited]A group of people holding torches emerges from the garden. [end if]The road splits off towards the garden in the south, and the city in the west. Road lies to the east."

The torch-group is scenery in the Garden Entrance. The description is "A group of soldiers, priests and other individuals are walking out of the garden towards the city. You notice one man in chains being pushed by the soldiers."
Understand "group" and "torch" as torch-group.
The printed name of the torch-group is "group".

Instead of talking to the torch-group:
	say "That's probably not a good idea, since you don't want to draw attention to yourself."
	
Test me with "w / w / talk to group"