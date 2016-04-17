#App Design Analysis - Navigation Styles
######by Nick Perkins
---

###Game Apps

#####Alto's Adventure

* tap to Start (GLKit View)
	* Pause (Modal with Horizontal Stack View)
		*	Menu in Left View (View)
			* Home (GLKit View)
			* Restart (GLKit View)
			* Resume (GLKit View)
		* 	Menu (Modal with Scroll View and Navigation Bar)
* Menu (Modal with Scroll View and Navigation Bar)
	* Goals (View with Push Detail)
	* Settings (Scroll View)
		* Replay Tutorial (Modal with Popover)
			* Cancel (Remove Popover)
			* Replay (Segue to GLKit View)
	* Language (Collection View)
	* Game Center (View)
		* Leaderboards (Web View)
		* Achievements (Web View)
	* Stats (Table View in a Scroll View with Push Details)
	* Credits (Table View)
* Workshop (Modal with a Table View inside a Scroll View)
	* Click a game item to buy with earned credits (Popover)

#####Threes

* Load Screen (Activity Indicator View)
	* Start Screen (GLKit View)
		* Play Threes ()
		* Menu (Page View with Scroll View and replaces Labels with Buttons)
			* Highest Score
			* Second Highest Score
			* 
			* Merchandise
			* Options
			* Credits
			* Special Thanks
			* Puzzlejuice
			* Clear Scores
		* Tutorial ()