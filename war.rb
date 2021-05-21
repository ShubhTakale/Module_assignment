module War
    #  A country can win a war if no of states is more than 10, population is more than 20 crores and army strength is more than 10 lakh
    def can_win_war?(country)
        return country.states.count>=1 && country.population >= 200000000 && country.army_strength >= 1000000 
    end
end
