class Startup
    attr_reader :name, :founder
    attr_accessor :domain, :num_funding_rounds, :total_investment

    @@all = []
    def initialize(name, founder, domain)
        @name = name 
        @founder = founder
        @domain = domain
        @@all << self
        @num_funding_rounds = 1
        @total_investment = 0
    end 

    def pivot(new_domain, new_name)
        @domain = new_domain
        @name = new_name
    end

    def find_by_founder(founder_s)
        Startup.all.find {|startups| startups.founder == founder_s}.name
        #a.name
    end

    def self.domains
        #b = @@all.map {|startup| startup.domain}
        Startup.all.map {|startup| startup.domain}
    end

    def sign_contract(venture_capitalist, type, investment)
       FundingRound.new(self, venture_capitalist, type, investment)
       self.num_funding_rounds += 1
       self.total_investment += investment
    end

    def num_funding_rounds
        @num_funding_rounds
    end

    def total_funds
        @total_investment
    end

    def investors

    end

    def self.all
        @@all 
    end
end
