class BoatingTest

    @@all = []
    attr_reader :name, :student, :instructor
    attr_accessor :test_status
    def initialize(student, name, test_status, instructor)
        @name = name
        @test_status = test_status
        @student = student
        @instructor = instructor
        @@all << self
    end

    def self.all
        @@all
    end

end
