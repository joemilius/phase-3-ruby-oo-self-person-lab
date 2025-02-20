require 'pry'
class Person

    attr_reader :name, :happiness
    attr_accessor :bank_account, :hygiene

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
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

    def get_paid(amount)
        self.bank_account += amount
        "all about the benjamins"
    end

    def take_bath
        self.hygiene= @hygiene + 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness= @happiness += 2
        self.hygiene= @hygiene -= 3
        "♪ another one bites the dust ♫"
    end

    def call_friend(person)
        self.happiness= self.happiness + 3
        person.happiness += 3
        "Hi #{person.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic) 
        case topic
         when "politics"
            self.happiness= self.happiness - 2
            friend.happiness= friend.happiness - 2
            "blah blah partisan blah lobbyist"
         when "weather"
            self.happiness= self.happiness + 1
            friend.happiness= friend.happiness + 1
            "blah blah sun blah rain"
         else
            "blah blah blah blah blah"
         
        end
    end

end

