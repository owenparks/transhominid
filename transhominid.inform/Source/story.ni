"Transhominid" by spanky

[Include Title Page by Jon Ingold.]
Include Exit Lister by Eric Eve.


Section 1 - Cold Open

[CHANGE THE FOLLOWING LINE FOR DEBUGGING]
Debug_on is a truth state that varies. Debug_on is usually false.
Logging_on is a truth state that varies. Logging_on is usually false.

When play begins:
	If logging_on is true:
		try switching the story transcript on.

Section 2 - Player Setup

When play begins:
	say "Parental Unit 9924 (you'd always just called her Nyna) was the sentimental type. Maybe that's why she doted on you most, of all the fledglings in your pod. 'Your joining is only is only 3 cycles away,' she'd said, and it would mean a great deal to her if you would take the Journey and collect a few things before you came back. It was silly that she insisted on following such an old tradition, but not nearly as silly as measuring time in old Terran solar cycles.";
    now the player is in Lagrange Point.

The description of the player is "The tactile and auditory sensations take the most getting used to, but it takes only seconds to start filtering out the noise. How did anyone live like this for a day, let alone for millions of years?".
Eyes are part of the player.
Body is part of the player.
Hands are a part of the player.
Feet are a part of the player.
Ears are a part of the player.
[TODO: More body parts]

Chapter 4 - Plotitems

A plotitem is a kind of supporter.
Instead of dropping a plotitem:
	Say "You consider dropping it, and forgetting about the whole silly thing, but think better of it. Bringing back these objects had seemed so important to Nyna, though you weren't quite sure why.";

Section 1 - Something Old (Asteroid Fragment)

An asteroid is a kind of plotitem.  A asteroid is always portable.
An asteroid has some indexed text called Title1.  
An asteroid has some indexed text called Title2.  [This allows two-word 
titles.  It should be obvious how to expand it to allow longer ones...]
An asteroid has some indexed text called Title3.
An asteroid has some indexed text called Title4.

rule for printing the name of an asteroid (called r):
	if Title1 of r is not empty, say "[Title1 of r]";
	if Title2 of r is not empty, say " [Title2 of r]";
	if Title3 of r is not empty, say " [Title3 of r]";
	if Title4 of r is not empty, say " [Title4 of r]";
	stop the action;
	
understand the Title1 property as describing an asteroid.
understand the Title2 property as describing an asteroid.
understand the Title3 property as describing an asteroid.
understand the Title4 property as describing an asteroid.

instead of examining the somethingold for the first time:
	now title1 of somethingold is "chunk";
	now title2 of somethingold is "of";
	now title3 of somethingold is "asteroid";
	continue the action;

[DESCRIPTION]
A somethingold is an asteroid.
A somethingold is in the Hangar Bay.
Title1 of somethingold is "rock".
Title2 of somethingold is "".
The description of a somethingold is "A chunk broken from one of the many asteroids clustered around the Sun-Jupiter L5 point. This one is much older than the solar system itself, having formed light-years away in some distant stellar explosion over five billion years ago. It flew through the vast expanses of space between star systems and came to rest here, trapped for hundreds of thousands of years in the gravity well.[paragraph break]Maybe I can finally take it home.".

Section 2 - Something New (Hydrogen particle)

[================ SOLAR WIND - Something new ]
A hydrogen is a kind of plotitem.  A hydrogen is always portable.
A hydrogen has some indexed text called Title1.  
A hydrogen has some indexed text called Title2.
A hydrogen has some indexed text called Title3.
A hydrogen has some indexed text called Title4.

rule for printing the name of a hydrogen (called r):
	if Title1 of r is not empty, say "[Title1 of r]";
	if Title2 of r is not empty, say " [Title2 of r]";
	if Title3 of r is not empty, say " [Title3 of r]";
	if Title4 of r is not empty, say " [Title4 of r]";
	stop the action;
	
understand the Title1 property as describing a hydrogen.
understand the Title2 property as describing a hydrogen.    [This lets the player refer to the paper by name, even if the title changes during play.]
understand the Title3 property as describing a hydrogen.
understand the Title4 property as describing a hydrogen.

[DESCRIPTION]
Somethingnew is a hydrogen. 
Title1 of somethingnew is "solar".
Title2 of somethingnew is "wind".
The description of somethingnew is "Particles in a superheated plasma expelled by the dying star of the Sol system.".
[TODO: Change name to solar plasma]
[TODO: Cutscenes when the player picks up a plot item]

Section 3 - Something Borrowed (Engraved Plaque)

[============== ROCK - Something borrowed ===========]
A plaque is a kind of plotitem.  A plaque is always portable.
A plaque has some indexed text called Title1.  
A plaque has some indexed text called Title2.
A plaque has some indexed text called Title3.
A plaque has some indexed text called Title4.

rule for printing the name of a plaque (called r):
	if Title1 of r is not empty, say "[Title1 of r]";
	if Title2 of r is not empty, say " [Title2 of r]";
	if Title3 of r is not empty, say " [Title3 of r]";
	if Title4 of r is not empty, say " [Title4 of r]";
	stop the action;
	
understand the Title1 property as describing a plaque.
understand the Title2 property as describing a plaque.
understand the Title3 property as describing a plaque.
understand the Title4 property as describing a plaque.

[DESCRIPTION]
Somethingborrowed is a plaque. The description is "A smooth, shiny shard of black rock that glitters in the starlight.".
Somethingborrowed is in the Crew Quarters.
Title1 of somethingborrowed is "a".
Title2 of somethingborrowed is "shiny".
Title3 of somethingborrowed is "rock".

Section 4 - Something Blue (Cherenkov Emitter)

[CHERENKOV EMITTER - Something blue]

neutrino generator is a thing.
bottle of clear liquid is a thing. The description is "Hydrogen oxide. How very curious. You don't ever remember having encountered it in its liquid state. The bottle is made from plastic, and the liquid inside was distilled to be pure. Most likely, this was provisions for the crew that worked here.[paragraph break]You can't tell where it was bottled, but who knows? It's possible it contains only remaining sample of actual Terran water in the entire Sol system."

An emitter is a kind of plotitem.  A emitter is always portable.
A emitter has some indexed text called Title1.  
A emitter has some indexed text called Title2.
A emitter has some indexed text called Title3.
A emitter has some indexed text called Title4.

rule for printing the name of a emitter (called r):
	if Title1 of r is not empty, say "[Title1 of r]";
	if Title2 of r is not empty, say " [Title2 of r]";
	if Title3 of r is not empty, say " [Title3 of r]";
	if Title4 of r is not empty, say " [Title4 of r]";
	stop the action;
	
understand the Title1 property as describing a emitter.
understand the Title2 property as describing a emitter.
understand the Title3 property as describing a emitter.
understand the Title4 property as describing a emitter.

A somethingblue is a emitter. 
A somethingblue is in the Reactor Core.
Title1 of somethingblue is "submerged".
Title2 of somethingblue is "emitter".
The description of a somethingblue is "It's an emitter.".

[The announce items from multple object lists rule is not listed in any rulebook.]

[Something old - solar wind]
[Something new - Free Hydrogen from new Main sequence star]
[Something borrowed - Terran Obsidian]
[Something blue - Neutrino emitter and water]

Section 5 - Renaming Plotitems

The renaming plotitem rules are a rulebook.

This is the rename somethingold rule:
	If the player does not have the somethingold:
		Now Title1 of somethingold is "chunk";
		Now Title2 of somethingold is "of";
		Now Title3 of somethingold is "asteroid";
	Otherwise if the player has the somethingold:
		If the player has exactly two plotitems:
			now Title1 of somethingold is "presolar";
			now Title2 of somethingold is "grain";
			Now Title3 of somethingold is "";
		Otherwise if the player has exactly three plotitems:
            [TODO: Make another name]
			now Title1 of somethingold is "presolar";
			now Title2 of somethingold is "grain";
			Now Title3 of somethingold is "";
		Otherwise if the player has exactly four plotitems:
			now Title1 of somethingold is "something";
			now Title2 of somethingold is "old";

This is the rename somethingnew rule:
	If the player does not have the somethingnew:
		Now Title1 of somethingnew is "solar";
		Now Title2 of somethingnew is "wind";
	Otherwise if the player has the somethingnew:
		If the player has exactly two plotitems:
			now Title1 of somethingnew is "free";
			now Title2 of somethingnew is "hydrogen";
		Otherwise if the player has exactly three plotitems:
			now Title1 of somethingnew is "split";
			now Title2 of somethingnew is "particles";
		Otherwise if the player has exactly four plotitems:
			now Title1 of somethingnew is "something";
			now Title2 of somethingnew is "new";
	
This is the rename somethingborrowed rule:
	If the player does not have the somethingborrowed:
		Now Title1 of somethingborrowed is "a";
		Now Title2 of somethingborrowed is "shiny";
		Now Title3 of somethingborrowed is "rock";
	Otherwise if the player has the somethingborrowed:
		If the player has exactly two plotitems:
			now Title1 of somethingborrowed is "Terran";
			now Title2 of somethingborrowed is "obsidian";
			now Title3 of somethingborrowed is "";
		Otherwise if the player has exactly three plotitems:
			now Title1 of somethingborrowed is "dusty";
			now Title2 of somethingborrowed is "plaque";
			now Title3 of somethingborrowed is "";
		Otherwise if the player has exactly four plotitems:
			now Title1 of somethingborrowed is "something";
			now Title2 of somethingborrowed is "borrowed";
			now Title3 of somethingborrowed is "";

This is the rename somethingblue rule:
	If the player does not have the somethingblue:
		Now Title1 of somethingblue is "submerged";
		Now Title2 of somethingblue is "emitter";
	Otherwise if the player has the somethingblue:
		If the player has exactly two plotitems :
			now Title1 of somethingblue is "bottled";
			now Title2 of somethingblue is "neutrino";
			now Title3 of somethingblue is "generator";
		Otherwise if the player has exactly three plotitems:
			now Title1 of somethingblue is "Cherenkov";
			now Title2 of somethingblue is "emitter";
			now Title3 of somethingblue is "";
		Otherwise if the player has exactly four plotitems:
			now Title1 of somethingblue is "something";
			now Title2 of somethingblue is "blue";
			
The rename somethingold rule is listed in the renaming plotitem rules.
The rename somethingnew rule is listed in the renaming plotitem rules.
The rename somethingborrowed rule is listed in the renaming plotitem rules.
The rename somethingblue rule is listed in the renaming plotitem rules.

After taking a plotitem:
	Follow the renaming plotitem rules;
	If the number of plotitems carried by the player is 4:
		say "With that, I felt like I'd acquired everything Nyna had asked me to bring back.";
	Continue the action;

After dropping a plotitem:
	Follow the renaming plotitem rules;
	Continue the action.

Section 3 - Inventory and Win Condition

Instead of taking inventory:
	Follow the self-inventory rule.

This is the self-inventory rule:
	Say "You are carrying:[line break]";
	If the player is not carrying anything:
		say "[tab]Nothing.[line break]";
	If the player is carrying the somethingold:
		say "[tab][somethingold][line break]";
	If the player is carrying the somethingnew:
		say "[tab][somethingnew][line break]";
	If the player is carrying the somethingborrowed:
		say "[tab][somethingborrowed][line break]";
	If the player is carrying the somethingblue:
		say "[tab][somethingblue][line break]";
	If the player has four plotitems:
		End the story saying "YOU WIN";
	Otherwise:
		say "[paragraph break]You are looking for:[line break]";
		If the player is not carrying the somethingborrowed:
			say "[tab]Artifact not covered by Intergalactic Cultural Antiquities Convention[line break]";
		If the player is not carrying the somethingold:
			say "[tab]Substance predating the Terran system[line break]";
		If the player is not carrying the somethingblue:
			say "[tab]Object radiating in the 600 TeraHertz range[line break]";
		If the player is not carrying the somethingnew:
			say "[tab]Material younger than yourself[line break]";

Chapter 5 - Space

Space is a region.

Section 1 - Station Exterior

Lagrange Point is a room. The description is "This was where Nyna had said to go, a mining station at the the Sun-Jupiter Lagrange point. The Preserver Collective had done an impressive job with their restoration, though it didn't look like anyone had ever bothered to visit. There was something lonely about the hulking metal structure, an abandoned museum, frozen in eternal stasis.[paragraph break]All the stars look unfamiliar this far from home, and you have to take a moment to reorient yourself to the Milky Way's magnetic north.[paragraph break]To the east, you see a large hangar bay leading to the interior of the station."

Somethingnew is in the Lagrange Point.

[The sun is scenery in the Station Exterior. The description is "It's been burning helium for a few thousand years now. You've never really liked red giants."

The earth is scenery in the Station Exterior. The description is "One of ".]

Section 2 - Hangar Bay

Hangar Bay is a room. It is east of the Lagrange Point. The description is "A wall panel displays a status readout.[paragraph break]The hangar bay doors are open to the west. Outside, you can see the vacuum of space extending in every direction.".

The wall panel is scenery in the Hangar Bay. The description is "You look at the black glass panel and read the glowing blue numbers on it. Everything had been kept the way it had been prior to T-Day. Artificial gravity was still on, station life support was providing a 3:1 nitrogen/oxygen mixture for your body to breathe, and all internal compartments were pressurized to 101.3 kPa.".

[TODO: examining list of stars and stellar objects visible from the station]
[TODO: Exit Lister extension]
[TODO: Nyna was a miner here on T-Day?]
[TODO: Earth has been moved a long time ago]

[TODO: create region for scenery that is space]

Elevator Shaft is a room. The description is "You walk to a set of thick, gray steel doors that gape open, and peer inside. A long, empty vertical tunnel stretches below you as far as your eyes can see, and then extends into the darkness. You call out, the sound echoing up and down the metal structure, sound waves colliding and reflecting off each other, a dissonant symphony. You stand in wonder for a moment, and remember the stories Nyna used to tell about her youth and rock concerts, and marvel at the idea that you just created music.".

[TODO: Carry out singing]
[TODO: Carry out hints]

Section 3 - Docking Control Room

Docking Control Room is a room. It is north of the Hangar Bay.

Main Lobby is a room. It is south of the Hangar Bay.

Crew Quarters is a room. It is south of the Main Lobby.

Elevator Shaft is a room. It is east of the Main Lobby.

Section 3 - Reactor Core

Reactor Core is a room. It is below the elevator shaft.


Section 4 - Typography

tab is some text that varies. tab is usually "     ".

Section Z - Testing

Test me with "take wind / e / take asteroid / s / s / take rock / n / e / d / take emitter / inv".

