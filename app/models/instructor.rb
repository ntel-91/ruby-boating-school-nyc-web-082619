require 'pry'

class Instructor

    @@all = []
    attr_reader :name
    def initialize(name)
        @name = name
        @@all << self
    end

    def pass_student(student, test_name)
        test = BoatingTest.all.find_index do |test|
            test.student == student && test.name == test_name
        end
        
        if test
            BoatingTest.all[test].test_status = "passed"
            BoatingTest.all[test]
        else 
            BoatingTest.new(student, test_name, "passed", self)
        end     
    end

    def fail_student(student, test_name)
        test = BoatingTest.all.find_index do |test|
            test.student == student && test.name == test_name
        end
        
        if test
            BoatingTest.all[test].test_status = "failed"
            BoatingTest.all[test]
        else 
            BoatingTest.new(student, test_name, "failed", self)
        end     
    end

    def self.all
        @@all
    end

end
