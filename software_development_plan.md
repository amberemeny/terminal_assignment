## User Stories
As a [user] I want to [action] so that I can [reason].

As a user I want to grow a virtual plant so that I can enjoy myself without growing a real plant.

As a user I want to take care of my virtual plant in a realistic sense so that it's like growing a real plant. 

As a user I want to environment my plant is in to influence it's growth so that I can take care of my virtual plant realistically.

As a user I want my plant to be able die if I don't take care of it so I can be motivated to take care of my virtual plant properly.

## Purpose and Scope
The application I have chosen to develop is a plant simulation game created with the Ruby programming language. The program is designed to simulate the ecological growth stages of a potted sunflower plant. By implementing planned features, the user will be able to modify parameters that will then influence the increase or decrease of the plant's health and growth. Eventually, the plant will flower or die depending on how  well it is looked after.
<p>
Each iteration of the game will begin with a new day. After displaying the day number, the user will be able to water, fertilise, use pesticide on, and move the location of the plant. Multiple actions will be able to be preformed each day. By manipulating the variables  of the plant, the growth multiplier will then set the plant to grow at different speeds, encouraging the user to find the optimal conditions to grow their virtual plant. After the initial day, the application will display flavor text about any new growth and condition of the plant; if it has bugs or is looking too dry, for example.
<p>
The goal and condition to complete the game is to look after the plant well enough that it produces a flower. This is achieved by optimising the plants water level, intake of sunlight, location and fertiliser level. Upon winning or losing, the user will be able to exit the application or begin again.
<p>
The reason I am developing the Plant Sim application is to provide the user with the satisfaction of growing a flowering plant, without real-world time consumption or costs. My target audience for the project are mostly plant lovers, simulation game enthusiasts and teens/young adults. I am choosing to implement features that simulate a realistic difficulty in catering to a real plants needs. I believe that by doing so, I can provide an enjoyable alternative to taking care of a real plant. 

## Features and Implementation
When considering my key user stories, I came up with a concise list of features that I decided to implement.
- Day loops - To store dynamic and reoccurring values to each of my variables across multiple in-game days, I have implemented each day as a loop which adds to the day counter each time the user decides to move to the next day.
- Watering - The virtual plant is able to be watered once daily since, by logic, you wouldn't purposely over-water a plant. As each day rolls over, the water level influences the growth multiplier to decide the level of plant growth and, depending on the location of the plant, will deplete and reduce the water level.
- Fertilising - The option to fertilise will have the most input on the growth multiplier of the plant. While you can only fertilise once per cycle, it will deplete very slowly over many days.
- Location - The virtual plant can either be moved indoors or outdoors. Initially, it will start outdoors but the user can decide the location of the plant any number of times in one day. This variable influences the growth multiplier as well as the rate at which the water level lowers.
- Pesticides and bugs - According to the level of water and location of the plant, there will be a percentage chance for a bug infestation to occur. If the plant has been treated with pesticides either before or after an infestation, the chance will be set to zero. 
- Growth multiplier - So that the application can track growth rate across multiple in-game days, I have implemented a growth multiplier variable which takes a float value from the water level, location, and condition of the plant and decides the speed at which the virtual plant will grow. If the growth multiplier becomes a negative number, the plant will begin to wither and die.
- Growth level and flowering - As the days progress, the growth multiplier will add growth levels to the plant, eventually reaching a goal number which decides that the plant has flowered and therefore completed the objective of the game. If the growth level reaches a negative number, the virtual plant will be declared dead and the user will be prompted to exit or begin again.
- End game statistics - Upon winning or losing, the user will be presented with their stats for the current game. This will include how many days it took to grow or for the plant to die, how many times they watered their plant and if the plant was infested with bugs or not. 
- Manual - At any time during each day, the user can prompt for help and be shown a list of commands to care for the plant and what each command does.
- Error handling - If at any time the user inputs an invalid argument, the application will display a prompt and inform the user of the help command. 

## User Interaction and Experience
### User Interaction and Information
At the start of a new game, the user is asked if they would like to start a new game. 
`y` - begins a new game.
`n` - asks the user to try again.
`h` - displays the manual.

The introduction flavor text is displayed and the user is asked to enter another option.
`w` - waters the plant, once per in-game day.
`f` - fertilises the plant, once per game.
`p` - uses pesticide on the plant, once per game.
`m` - moves the location of the plant. 
`n` - initialises the next in-game day.

On completion of each day, variables will be calculated and flavor text relating to growth level, water condition, day number and bug status will be displayed to the user. After which, the days options will repeat. 
<br> At the end of each in-game day, the growth level will be compared with win or lose conditions to decide if the plant has flowered or died. Upon a win or lose condition, the user will be able to enter `e` to exit the application.

Below is an image of the flowchart used to represent user interaction.
![user_interaction](https://github.com/amberemeny/terminal_assignment/blob/master/images/User%20Interaction.jpg?raw=true =600x)

### Manual Information 
At any time within the application, the user is able to use the `h` (help) command to display a list of possible inputs. 
During the menu screen, the manual is short and concise, only displaying the relevant information. 

![new_game_manual](https://github.com/amberemeny/terminal_assignment/blob/master/images/new_game_manual.png?raw=true)

After a new game has begun, the manual displays more information relevant to the commands available.

![in_game_manual](https://github.com/amberemeny/terminal_assignment/blob/master/images/in_game_manual.png?raw=true)

### Error Handling
On all occasions of an invalid response, a prompt will be displayed to the user. 
![error_handling](https://github.com/amberemeny/terminal_assignment/blob/master/images/error_handling.png?raw=true)

## Implementation Plan

## Development Log

 4/09 09:00 - Completed most documentation, beginning to initiate basic code.
 4/09 12:00 - Successfully added watering, fertilising and move functions to application. 
 4/09 15:30 - Implemented day cycles for pesticide, bugs and growth multiplier.
 4/09 21:30 - Implemented growth levels, flavor text and initialised win conditions.
 5/09 12:00 - Implemented all planned features, commented all code, installed colorize and artii gems.
 </br>
Significant problems:
	One of the bigger problems that I've come across have been the way the application handles the initialisation of a new game. I wanted to implement a feature that upon calling for a new game, resets all the variables of the plant object. I tried instead to utilise the "rerun" gem but couldn't get it to install due to installation errors. Instead if was suggested to begin a game with two objects, run one, and then copy the unmodified object to overwrite the current one to essentially wipe the object clean. I am unsure how to implement this and have struggled to locate relevant help online so I have decided to keep it simple with just the option to exit the game on a win or lose condition and rely on the user to run the program again.


