module SeatInUN
    # A country can have seat if its army strength is greater than 2 lakh, state is developed 
    def can_have_seat_in_UN (country)
        if country.army_strength > 200000 && country.country_state== "Developed"
            puts "Country can have seat in UN Security Council "
        else
            puts "Country cannot have seat in UN Security Council "
        end
    end
end