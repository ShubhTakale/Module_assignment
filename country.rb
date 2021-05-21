class Country
    attr_accessor :population, :gdp, :states, :army_strength, :country_state, :id

    def initialize(id, population, gdp, states, army_strength, country_state)
        @id = id
        @population = population
        @gdp = gdp
        @states = states
        @army_strength = army_strength
        @country_state = country_state
    end
end
