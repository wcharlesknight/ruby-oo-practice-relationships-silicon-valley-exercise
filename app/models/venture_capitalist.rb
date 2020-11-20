class VentureCapitalist
    attr_reader :name
    attr_accessor :net_worth
    
    @@all = []
    @@billionaires = []

    def initialize(name, net_worth)
        @name = name
        @net_worth = net_worth
        @@all << self
        if net_worth > 1000000000
            @@billionaires << self
        end   
    end

    def self.all
        @@all
    end
    
    def self.tres_commas_club
        @@billionaires 
    end
end
