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
		* Play Threes (GLKit View)
			* Menu (Page View with Scroll View and replaces Labels with Buttons)
			* Stats (Page View)
		* Menu (Page View with Scroll View and replaces Labels with Buttons)
			* Last Score (Image and Label with Score)
			* Second to last Score (Image and Label with Score)
			* etc (continues to show high scores you have)
			* Merchandise (Safari Browser)
			* Options (Buttons in Page View)
			* Credits (Labels and Buttons in Page View)
			* Special Thanks (TextArea in Page View)
			* Puzzlejuice(Page View)
			* Clear Scores (Button in Page View)
		* Tutorial (GLKit View)

		
###Photography Apps

#####Still Shot
* Start View (Page View)
	* Choose From Library (List View)
		* View Video and Pick Frame to Make A Photo (Scroll View with Navigation Bar)
	* Facebook Button (Open Facebook)
	* Twitter Button (Modal)
	* Play Button (AVKit Player View Controller)
	* Messaging Inbox (Table View)
	* Still Shot Button (AVKit Player View Controller)

#####ABM (A Beautiful Mess)
* Start View (Page View with two buttons)
	* Solo (Split Screen with Navigation Bar of photos on bottom, top view is selected photo in Tab View Controller)
		* Photo (Page View with Navigation Bar of edit choices based on in-app purchases)
			* Add Text (Modal View of different fonts and Text field)  
		* Background (Collection View of different images)
		* Color (displays Navigation Bar of Colors to choose)
		* Crop Size (displays Navigation Bar of three crop sizes)
	* Collage	(Scroll View with Collection of Collage items)
		* Select one (Page View with buttons for selecting photos for collage) 


###Social Media Apps

#####DownToLunch
* Home View (Page View)
	* I want to (Popover of items to select)
	* with (Popover with lists to select)
	* at (Popover with form)
	* I'm Down (Sends notifications to those with app)

#####WhatsApp
* Chats (Table View with Scroll View, Search bar in Tab View Controller)
	* Edit (displays more buttons to delete items)
	* Favorites (Table View)
	* Recents (Table View of Missed Calls)
	* Contacts (Table View of Contacts)
	* Settings (Scroll View of buttons)
	* Message from Friend 1 (Scroll View of labels and buttons)
	* Messsage from Friend 2 (scroll view of labels and buttons)


###To-Do Apps

#####Things
* Lists (Scroll View with Search Bar and Navigation Bar)
	* Inbox (Table View)
		* Edit(Adds button and able to drag gesture)
		* Move (Adds button to left of each item
			* Slide up of home View showing options to move item)
		* +
			* New To Do (Slide up transition with Page View)
				* Save button
				* Cancel button
	* Today (Table View)
		* Edit(Adds button and able to drag gesture)
	* Next (Table View)
		* Edit(Adds button and able to drag gesture) 
	* Scheduled (Table View)
		* + (same as above)
		* New Reoccurence(Slide up transition with page view of buttons)
		* Move (same as above)
		* Tags (Slide up transition with table view of tags)
	* Someday (Table View)
		* + (same as above)
		* Move (same as above)
		* Tags (same as above)
	* Projects (Table View)
	* Long list of Tags user creates (Table View)
		* Table View of To Dos from that Tag
	* Logbook (Table View of completed tasks)

#####Dreamdays
* Home View (Split View Controller, top is Page View, bottom is Table View)
	* + (Slide Left Transition Page View with Text Fields)
	* Menu (Slide over Home View with buttons)
	* Saved Item (Slide Left Transition Page View)

###Calendar Apps

#####Google Calendar
* Home View (Scroll View in Split View Controller)
	* Menu (Right slide transition with menu of buttons in scroll view)
	* Select Month (Changes size of top view to show calendar)
	* + (Button changes to three more buttons)
		* Event (Scroll View that has Slide up transition with form fields)
		* Reminder (Scroll View that has Slide up transition with form fields)
		* Goal (Scroll View that has Slide up transition with form fields)

#####Calendars by Readdle
* Home View (Scroll View with Navigation Bar in Split View Controller)
	* + (Page View with buttons)
	* Menu (Top Split increase size and another set of buttons displays)
		* List (Scroll View with Search Bar)
		* Day (Changes displayed data in bottom split view)
		* Week (Changes displayed data in bottom split view)
		* Month (Horizontal Scroll View of Calendar Months)
		* More (Slide up transition Page view)
		* Calendars (Slide from bottom transition with page View) 


###Sound Apps

#####Air1
* Home View(Page Control inside a Tab View Controller)
	* Select Arrows (Slide Up Transition displays AVKit Player View Controller)
	* Trending (Page View)
	* Recent Songs (Horizontal Scroll View of Songs played)
	* Daily Verse	(Horizontal Scroll View of Cells)
* Menu (Page Transition slides view over with another view on top)
	* Artists (Table View with Vertical Scroll View)
	* My Favorites (Table View)
	* Find A Station (Table View)
		* * Showing Location (Slide View over top with buttons and Text Field)
	* Send A Message (AVKit Player View Controller)
		* Play Button
		* Record Button
		* Stop button 
	* Alarm Clock (Table View of Set Alarms)
	* Connect (Page View with Slide overlap transition)
	* Donate (Page View with Slide overlap transition)
	* 	Donate button 
	* Settings (Page Scroll View with slide overlap transition)

#####Audible
* My Library (Table View with Navigation Bar)
	* Select Audio Book (AVKit Player View Controller)
	* Discover (Scroll View with Multiple horizontal Scroll Views in Tab Bar Controller)
	* Channels (Scroll View with Tab Bar)
		* My Channel (Table View)
		* Following (Table View)
		* Explore (Scroll View with Collection Cells)
		* Help (Popover Page View)
	* More (Table View of items to select)
		* Me (Page View of Stats)
		* News (Scroll View)
		* Settings (Scroll View with Table View)


###Three More Apps I Use

#####Flipboard
* Load Screen (Activity Indicator View)
	* Home View (touch gesture-enabled container controller with pag flips)
		* Each page has several views to display multiple articles
	* Magazines (Collection View of many cells inside a Scroll View)
	* Search (Search Bar with Collection View to display items)
		* Enter Search keywords switches to Table View 
	* Notifications (Button is all I see. I don't have this setup)
	* Account (Scroll View with a Collection of Magazines)

#####Scanner Pro
* Main View (Collection View)
	* Settings (Scroll View with Table of settings with Popover transition)
	* Select (Brings up Navigation Bar of Buttons)
		* Share
		* Move
		* Merge
		* Delete 
		* Done (Page Slides Down)
	* + (Page View with Camera Window View with buttons for camera)
		* Images Stored (Page View with Image and buttons for editing)
			* Add
			* Share
			* Edit
			* File Name Label
			* More Options (Blur Effect with Small list of buttons) 
			* Save

#####Pixelmator
* Main View (Collection View)
	* Previously made image (Image View with Navigation Bar)
		* Tools
		* +
		* Settings
		* Share 
	* Edit (Blur effect adds buttons to delete items)
	* Share (popover slides from bottom with buttons)
		* Send A Copy
		* Open in Another App
		* Send to iCloud Drive
		* Copy to Photos
		* Cancel (Popover slides down)
	* + (Popover slides from bottom with buttons)
		* Create Image
		* iCloud Drive
		* Photos
		* Take Photo
		* Cancel (Popover slide down)