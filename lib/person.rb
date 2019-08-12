require "pry"

class Person
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(happiness)
        if (0..10).member?(happiness)
            @happiness = happiness
        elsif happiness >= 10
            @happiness = 10
        else
            @happiness = 0
        end
    end

    def hygiene=(hygiene)
        if (0..10).member?(hygiene)
            @hygiene = hygiene
        elsif hygiene >= 10
            @hygiene = 10
        else
            @hygiene = 0
        end
    end

    def happy?
        if @happiness > 7
            true
        else
            false
        end
    end

    def clean?
        if @hygiene > 7
            true
        else
            false
        end
    end

    def get_paid(salary)
        @bank_account += salary
        return "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        return "♪ another one bites the dust ♫"
    end

    def call_friend(callee)
        self.happiness += 3
        callee.happiness += 3
        return "Hi #{callee.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friendy, topic)
        if topic == "politics"
            self.happiness -= 2
            friendy.happiness -= 2
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            friendy.happiness += 1
            return "blah blah sun blah rain"
        else
            return "blah blah blah blah blah"
        end

    end
   
end


# penelope = Person.new("Penelope")
# felix = Person.new("Felix")

# binding.pry
# 0