# your code goes here
require 'pry'
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
    @happiness = happiness
    if @happiness > 10
            @happiness = 10
    elsif @happiness < 0
            @happiness = 0
    end
  end
    
  def hygiene= (hygiene)
    @hygiene = hygiene
    if @hygiene > 10
      @hygiene = 10
    elsif @hygiene < 0
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
  
  def get_paid (salary)
    @bank_account += salary
    p "all about the benjamins"
  end
  
  def take_bath
    @hygiene += 4
    self.hygiene=(@hygiene)
    p "♪ Rub-a-dub just relaxing in the tub ♫"
  end
  
  def work_out
    @hygiene -= 3
    @happiness += 2
    self.hygiene= (@hygiene)
    self.happiness= (@happiness)
    p "♪ another one bites the dust ♫"
  end
  
  def call_friend(f)
    @happiness += 3
    self.happiness = (@happiness)
    f.happiness += 3
    p "Hi " + @name.to_s + "! It's " + f + ". How are you?"
  end
    
end