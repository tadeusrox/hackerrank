class Person
  attr_accessor :age

  def initialize(initialAge)
    @age = [0, initialAge].max
    puts_age_warn if age != initialAge
  end

  def amIOld()
    if age < 13
      puts "You are young."
    elsif (13..17).include?(age)
      puts "You are a teenager."
    else
      puts "You are old."
    end
  end

  def yearPasses()
    @age = @age + 1
  end

  def puts_age_warn
    puts "Age is not valid, setting age to 0."
  end
end
