class FundingRound
    
    attr_reader :startup, :venture_capitalist, :investment
    attr_accessor :type

    @@all = []
    def initialize(startup, venture_capitalist, type, investment)
        @startup = startup
        @venture_capitalist = venture_capitalist
        @type = type
        @investment = investment
        if investment > 0.0 
            @@all << self
        end 
    end 

    def self.all
        @@all
    end

end
