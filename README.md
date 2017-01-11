Tap Game UI instructions

Drag out a Vertical Stack view and fill up the whole screen. Then add the constraints to the top, bottom, leading and trailing.
Drag out 2 buttons and call them Player 1 and Player 2. Set the background color to orange (or whatever you prefer).
Drag out a horizontal stack view and place it below Player 1 and above Player 2.
Drag out 2 labels and place them inside the stack view. Call them Player 1 Score and Player 2 Score. Center the text in those 2 labels. Set number of lines to 0.
Place a button in between Player 1 Score and Player 2 Score then call it Start. 


Now we are going to adjust the stack view to distribute the UI the way we want it.

Open Document Outline.
Select the top Stack View
* Set the distribution to “Fill Equally”
Select the inner Stack View and set the distribution to Fill Equally

Build & Run to ensure everything works correctly

Code stuff
1. Make outlets for labels
2. Make action for start
3. In that method change the text of the two labels to “Player 1(or 2) Score: 0”

Demo so that everything shows up on screen and when you tap Start the labels update

4. Add 2 variables to keep track of counts (initialized to 0)
5. Move the “label.text =“ to another new function called updateUI and use the new variables to display the count. Call the update function from start()
6. Create 2 more actions for the taps from Player 1/2 where the correct count is incremented and the updateUI is called.

Demo so that pressing start changes the text to zero (the first time) and pressing Player 1 and Player 2 sets the correct count.

Now we have a counter, to turn this counter into a game we’re going to need to do 2 things: 

When start is pressed reset the tap count to zero and then set a timer to limit the time available for tapping. 

To implement this let’s create a boolean variable so that we know when a game has been started.

7. Declare a variable isGameStarted and set to false
8. In start function set that variable to true and the two counts to 0.
9. This is all good but the players can press start to reset at any time. Disable the button with sender.isEnabled = false (at the top)
10. Next in updateUI only allow the text to be changed when the game has been started (if isGameStarted {})

Build & Run
Press counters and nothing will happen
Press start and you can now start increasing the count

We have one last feature to add to the game, stopping it after a certain amount of time.

11. After updating the ui when the user presses start, schedule a one-time timer for 10 seconds
12. Once that timer is done, reenable the start button and stop the game.
