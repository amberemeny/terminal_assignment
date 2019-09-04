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
At any time within the application, the user is able to use the help command to display a list of possible inputs. 
The manual will display as follows:

## Implementation Plan
 


