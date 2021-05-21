require "./country"
require "./loan"
require "./seat_in_UN"
require "./war"

class Application
    include Loan
    include SeatInUN
    include War
    
    attr_accessor :countries

    def initialize
        @countries = []
    end

    def add_country
        print "Enter Country id : "
        id = gets.chomp
        print "Enter population : "
        population = gets.chomp
        print "Enter gdp : "
        gdp = gets.chomp
        print "Enter comma separated state names :"
        states = gets.chomp
        states = states.split(",")
        print "Enter army strength : "
        army_strength = gets.chomp.to_i
        print "Enter country state (Developing/Developed) : "
        state = gets.chomp
        @countries << Country.new(id, population, gdp, states, army_strength, state)
        puts "Country added successfully!!"
    end

    def display_country_list
        @countries.each  { |c| puts c.id+", "+c.population.to_s+", "+c.gdp.to_s+", "+c.states.join(",")+", "+ c.army_strength.to_s+", "+c.country_state }
    end

    def get_country_from_id(id)
        return @countries.find { |c| c.id == id}
    end

    def get_country
        print "Enter country id : "
        id = gets.chomp
        return get_country_from_id(id)
    end
end

app = Application.new
app.countries << Country.new("Ind", 1500000000, 2.87, ["MH","UP","MP","PB","KA","TM","KR"], 300000, "Developing" )
app.countries << Country.new("USA", 500000000, 21.43, ["NYC","CA","MCH","LV"], 2500000, "Developed" )


while true do
    puts " "
    puts " "
    puts "1. Add Country "
    puts "2. Display Country List"
    puts "3. Check Loan Status"
    puts "4. Check seat status"
    puts "5. Check War status "
    puts "6. Exit "
    print "Enter choice : "
    choice = gets.chomp().to_i
    if(choice == 6)
        break
    end
    case choice 
    when 1  
        app.add_country

    when 2
        app.display_country_list

    when 3
        country = app.get_country
        if country != nil
            app.print_loan_type(country.gdp,country.country_state)
        else
            puts "Country id not present"
        end
        
    when 4
        country = app.get_country
        if country != nil
            if app.can_have_seat_in_UN?(country)
                puts "Country can have seat in UN Security Council "
            else
                puts "Country cannot have seat in UN Security Council "
            end
        else
            puts "Country id not present"
        end

    when 5
        country = app.get_country
        if country != nil
            if app.can_win_war?(country)
                puts "Country can win the war "
            else
                puts "Country cannot win the war "
            end
        else
            puts "Country id not present"
        end
        
    else 
        puts "Invalid choice"
    end
end
