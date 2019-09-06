# Plant Sim Ruby Application
![plant_sim](https://github.com/amberemeny/terminal_assignment/blob/master/images/plant_sim.gif?raw=true)
## Description
Plant Sim is a ruby application and plant simulation game written by Amber Emeny as an assessment for Coder Academy's FastTrack Program.
<br> The game allows the player to care for a virtual sunflower seedling until it flowers or dies. 

## Motivation and Other Ideas
The motivation for application comes from being an avid plant lover and plant parent, myself. I am well aware of the time, effort and love that goes in to raising a plant, as well as how sensitive they are to environmental variables. 
When deciding on the idea for my assessment, I considered a few other ideas.
- A choose-your-own-adventure survival game.
- A shopping list tracker application.
- A cat care simulation game.

## Features and Functionality
Plant Sim allows the user to care for and raise their virtual plant with realistic features and environmental variables.
+ Watering - influences the water level, growth speed and chance for bugs to occur.
+ Fertilising - influences the growth speed of the plant.
+ Pesticides - removes the presence of bugs on the plants and prevents infestations.
+ Location - influences the rate at which the plant grows, how much the water level lowers each day and the chance for bugs to occur.
+ Win/fail conditions - To win the game, take care of your plant until it flowers. Neglecting your plant causes a loss.
## Code Structure
<br> `plant_app.rb` is what the whole application runs from and initiates the new game.
<br> `classes/new_game.rb` handles the user interaction with the new game menu, which then creates the *plant* and *user_game* objects.
<br>`classes/user_plant.rb` initializes the sunflower class and handles most plant-specific variables such as @location, @growth_level and @water_level. It also contains the flower_sequence and death_sequence methods.
<br> `simulation.rb` is where the bulk of the application takes place. It handles the in-game manual, day loops/choices, calculations, and exit sequences.
### Gems
This application uses both the __aarti__ and __colorize__ gems to enhance the visual user experience.
## Build Status
The current build of Plant Sim is in its completed state.
## Instructions for Use
1. Follow these instructions to download and install Ruby on your computer.
2. Download and unzip the files on your local computer.
3. On the terminal command line, navigate to the folder you just extracted from the zip file, and install bundler.
```
> install bundler
```
4. Ask bundle to install the gems that we use for the program.
```
> bundle install
```
5. Input the below command in the terminal command line.
```
> ruby plant_app.rb
```

## Design and Planning Progress
 The whole design, development and coding process can be viewed in the included `software_development_plan.md` file.
## Testing
<br> Tests were written and carried out using the test-unit ruby gem. 
+ Test 1 - tests to see if the `plant` object under the `Sunflower` class is initiated properly.
+ Test 2 - tests to see if the `growth_modifier` variable is being calculated properly on each new day.
