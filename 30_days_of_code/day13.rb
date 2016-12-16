class Student < Person

  def initialize(first_name, last_name, id, score)
    super(first_name, last_name, id)
    @score = score
  end

  def printPerson()
    puts "Name: #{@lastName}, #{@firstName}"
    print "ID: #{@id}"
  end

  def calculate
    mean = @score.inject(:+) / @score.length

    case(mean)
      when(90..100)
      'O'
      when(80..89)
      'E'
      when(70..79)
      'A'
      when(55..69)
      'P'
      when(40..54)
      'D'
      when(0..39)
      'T'
    end
  end
end
