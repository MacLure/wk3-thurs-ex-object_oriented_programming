class Person

    def initialize(name)
        @name = name
    end

    def greet
        "Hi, my name is #{@name}"
    end

end

class Student < Person

    def initialize(name)
        super(name)
    end

    def learn
        return "I get it!"
    end
end

class Instructor < Person

    def initialize(name)
        super(name)
    end

    def teach
        return "Everything in Ruby is an Object"
    end
end



nadia = Instructor.new("Nadia")
puts nadia.greet

chris = Student.new("Chris")
puts chris.greet

puts nadia.teach
puts chris.learn
puts chris.teach # chris is a Student, which is a class that does not have the teach method.
