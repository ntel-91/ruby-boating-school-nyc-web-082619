class Student

    @@all = []
    attr_reader :first_name
    def initialize(first_name)
        @first_name = first_name
        @@all << self
    end

    def self.all
        @@all
    end

    def add_boating_test(name, test_status, instructor)
        BoatingTest.new(self, name, test_status, instructor)
    end

    def self.find_student(first_name)
        self.all.find do |test|
            test.first_name == first_name
        end
    end

    def grade_percentage
        
        student_tests = 
        BoatingTest.all.select do |test|
            test.student == self
        end

        passed = student_tests.count {|test| test.test_status == "passed"}
        total_tests = student_tests.length
        puts passed.to_f/total_tests.to_f
    end
end