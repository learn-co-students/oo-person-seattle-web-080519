# your code goes here
# 
require 'pry'
class Person
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account, :happiness
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end
    def happiness=(amount)
        if amount >= 10
            @happiness = 10
        elsif amount <= 0
            @happiness = 0
        else
            @happiness = amount
        end
    end
    def hygiene=(level)
        if level >= 10
            @hygiene = 10
        elsif level <= 0
            @hygiene = 0
        else
            @hygiene = level
        end
    end
    def happy?
        @happiness > 7
    end
    def clean?
        @hygiene > 7
    end
    def get_paid(salary)
        @bank_account += salary
        'all about the benjamins'
    end
    def take_bath
        self.hygiene=(@hygiene += 4)
        '♪ Rub-a-dub just relaxing in the tub ♫'
    end
    def work_out
        self.hygiene=(@hygiene -= 3)
        self.happiness=(@happiness += 2)
        "♪ another one bites the dust ♫"
    end
    def call_friend(person)
        self.happiness += 3
        person.happiness += 3
        "Hi #{person.name}! It's #{self.name}. How are you?"  
    end
    def start_conversation(person, topic)
        case topic
        when 'politics'
            person.happiness -= 2
            self.happiness -= 2
            "blah blah partisan blah lobbyist"
        when 'weather'
            person.happiness += 1
            self.happiness += 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end
end


# binding.pry
0