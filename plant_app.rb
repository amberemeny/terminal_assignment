# Defining variables for arguments
water_level = 0
growth_multiplier = 0
growth_level = 0
location = "outside"
fertiliser = false
bugs = false
response = nil

# Welcome Message
puts "Welcome Message"
response = gets.chomp

while growth_level <= 10
    while response != "Next Day"
        if response == "Water"
            if water_level != 5
                water_level = 5
            else 
                puts "You can't water your plant again today."
            end
        elsif response == "Move"
            if location == "outside"
                location = "inside"
                puts "You have moved your plant inside."
            else location = "outside"
                puts "You have moved your plant outside."
            end
        end

            puts "Anything Else?"
            response = gets.chomp
    end

    if location == "outside"
        growth_multiplier =+ 3
    else growth_multiplier =+ 2
    end

    if water_level <= 1 
        growth_multiplier =- 2
    elsif water_level <= 3
        growth_multiplier =+ 1
    elsif water_level <= 5
        growth_multiplier =+ 2
    elsif water_level == 5
        growth_multiplier + 2.5
    else
        growth_multiplier =- 5
    end

    if growth_multiplier <= 0
        growth_level =- 3
    elsif growth_multiplier <= 2
        growth_level =+ 0.5
    elsif growth_multiplier <= 3
        growth_level =+ 1
    elsif growth_multiplier <= 4.9
        growth_level =+ 1.2
    else growth_level =+ 1.5
    end

    puts water_level
    puts growth_multiplier
    puts growth_level
    puts "This is the next day.\nWhat would you like to do?"
    response = gets.chomp

end

