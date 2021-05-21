module Loan
    # country will get loan from INF if gdp>=5 and state is Developed
    # country will get loan from WB if gdp>=4 and state is developed or developing
    def print_loan_type(gdp, state)
        if (gdp >= 5 && state == "Developed") && (gdp >= 3 && state == "Developed" || state == "Developing")
            puts "Country will get loan from INF as well as WB"
        elsif (gdp >= 5 && state == "Developed")
            puts "Country will get loan from INF"
        elsif (gdp >= 3 && state == "Developed" || state == "Developing")
            puts "Country will get loan from WB"
        else
            puts "Country will not get loan"
        end
    end 
end
