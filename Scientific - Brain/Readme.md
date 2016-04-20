#Scientific Calculator App

###Errors Found

	[x]	After operator is pressed the label displays 0.
	[x] When first initilizing app when you hit the equal button no sum is displayed. But, if you hit Clear button it will return a sum.
	[x] Returning floating number when sum is hit.
	[x] After hitting equal and you enter a new operand to begin a new calculation no number is displayed in the label.
	[ ] When you hit decimal and operand no 0 is displayed. .3, but need 0.3

	
	
###Possible Solution

	[x]	Need to change so when the operator is pressed it will keep the label the same. Not changing the textlabel to 0.
	[x] Check clear button function to see what it is doing that when the app is loaded it is not doing. Add that functionality.
	[x] I need to remove all trailing zeros when it is a whole number by asking it to not return zeros as a float.
	[x] Not sure what is causing this problem. Maybe it is not resetting the brain?
	[ ] To fix I need to add a 0 to the output of if the button . is pressed. If an output isn't available I need to add it probably since it is doing nothing.
	
###What Was The Actual Solution

	[x]	- Found that self.displayLabel.text = 0 that was given in class needed to be replaced by self.displayLabel.text = brain.operand1String;  Also I needed to add under - (IBAction)operandTapped:(UIButton *)sender{ another nested if statement to handle if the button pressed is NOT a zero then to let it display the titleLabel's value.
	[x] - Needed to get a new brain in viewDidLoad and then it was able to calculate. It was called after a reset. Copied 'brain = [[CalculatorBrain alloc]init];'
	[x] - add .0 in front of f in CalculatorBrain.m
	[x] - This was solved with the zero displaying after the first operand was entered.
	[ ] - ...