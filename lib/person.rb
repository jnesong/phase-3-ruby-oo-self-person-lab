# your code goes here
class Person
    attr_accessor :bank_account #both sets and gets the instance variable bank_account
    #is the same as both
    # def bank_account= (value)
    # @bank_account = value
    # end
    #AND
    # def bank_account
    # @bank_account 
    #  end

    attr_reader :name, :happiness, :hygiene # only gets the instance variable bank_account
    #so it cannot be reset
    #these are all like 
    # def name
    # @name
    # end
  
    def initialize(name) #is called whenever .new is used to create the instance with the following data
      @name = name
      @bank_account = 25
      @happiness = 8
      @hygiene = 8
    end
  
    def happiness=(num) # a setter method
      @happiness =  if num > 10 # to the right of the equal sign is the value, to the left is the instance variable
                      10 #any num > 10 is just 10
                    elsif num < 0 # any num less than 10 is just 0
                      0
                    else
                      num # lastly, if the num is between 0 and 10 it is itself, num
                    end
    end
  
    def hygiene=(num) # a setter method
      @hygiene =  if num > 10 #the instance variable @hygiene is set equal to a value 
                    10 #any num greater than 10 is just 10
                  elsif num < 0 # any num less than 0 is just 0
                    0
                  else
                    num # num between 0 and 10 is itself, num
                  end
    end
  
    def clean? #this is a true or false method. 
      self.hygiene > 7 #when the instance's hygiene attribute is greater than 7 it will return true  
    end
  
    def happy? #another true or false method
      self.happiness > 7 #when the instance's happiness is greater than 7 it will return true, otherwise false
    end
  
    def get_paid(amount) #this is a method called .get_paid that will take an amount as an argument. 
      self.bank_account += amount #the amount argument is added to the instance's bank_account 
      "all about the benjamins" #and returns a string
    end
  
    def take_bath #this is a method called .take_bath 
      self.hygiene += 4 # when called it increases the self's hygiene by 4. this is explicit reciever syntax. 
      "♪ Rub-a-dub just relaxing in the tub ♫" # and returns a string
    end
  
    def work_out #this is a method called .work_out
      self.happiness += 2 #when called it increases the instance's happiness level by 2
      self.hygiene -= 3 # and also decreases it by 3. 
      "♪ another one bites the dust ♫"
    end
  
    def call_friend(friend) #a method called .call_friend that takes a friend as an argument
      self.happiness += 3 # uses explicit reciever syntax to increase the intance's happiness by 3
      friend.happiness += 3 #and also increase the friend's happiness by 3
      "Hi #{friend.name}! It's #{self.name}. How are you?" #and return a string with the instance and the friend's names interpolated 
    end
  
    def start_conversation(friend, topic) #a method .start_conversation that takes a friend and a topic as arguments
      case topic # uses a case statement for the topic argument/variable
      when "politics" # when the topic input is "politics"
        [self, friend].each { |person| person.happiness -= 2 } #both the instance and friend get 2 subtracted from their happiness
        "blah blah partisan blah lobbyist" # and returns a string
      when "weather" # when the topic is weather 
        [self, friend].each { |person| person.happiness += 1 } #both the instance and friend get 1 added to their happiness
        "blah blah sun blah rain" #and returns a string
      else
        "blah blah blah blah blah" #if the topic is neither politics nor weather, the method .start_conversation will just return a string. 
      end
    end
  
  end
