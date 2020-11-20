class Startup
    attr_reader :name, :founder
    attr_accessor :domain

    @@all = []
    @@domains = []
    def initialize(name, founder, domain)
        @name = name 
        @founder = founder
        @domain = domain 
        @@all << self
        @@domains << self.domain 
    end 

    def pivot(new_domain, new_name)
        @domain = new_domain
        @name = new_name
    end

    def find_by_founder(founder_s)
        a = @@all.find {|startups| startups.founder == founder_s}
        a.name
    end

    def self.domains
        @@domains
    end

    def sign_contract(vc)
       FundingRound.new(self, vc, type, investment) 
    end 

    # def orders
    #     Order.all.select{|order| order.grocery_item == self}
    # end 

    def self.all
        @@all 
    end

end
