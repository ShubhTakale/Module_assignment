module SeatInUN
    # A country can have seat if its army strength is greater than 2 lakh, state is developed 
    def can_have_seat_in_UN?(country)
        return country.army_strength > 200000 && country.country_state== "Developed"
    end
end
