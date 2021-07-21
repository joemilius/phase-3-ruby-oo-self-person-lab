require 'pry'
class Person

    attr_reader :name, :happiness
    attr_accessor :bank_account, :hygiene

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
        @amount
    end
   
    def happiness=(value)
        if value > 10
            @happiness = 10
        elsif value < 0
            @happiness = 0
        else
            @happiness = value
        end
    end

    def hygiene=(value)
        if value > 10
            @hygiene = 10
        elsif value < 0
            @hygiene = 0
        else
            @hygiene = value
        end
    end

    def happy?
        if self.happiness > 7
            true
        else
            false
        end
    end

    def clean?
        if self.hygiene > 7
            true
        else
            false
        end
    end

    def get_paid=(amount)
        @amount = amount
    end
    
    def get_paid
        @amount
    end
    

end

