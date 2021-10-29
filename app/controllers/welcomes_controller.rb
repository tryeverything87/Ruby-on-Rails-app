class WelcomesController < ApplicationController

    def index 
        @btc_price = Cryptocompare::Price.find('BTC', 'USD')["BTC"]["USD"]
    end

end
