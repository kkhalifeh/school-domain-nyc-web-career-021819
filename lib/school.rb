require "pry"

class School

  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student_name, grade)
    if @roster[grade].nil?
      @roster[grade] = []
    end
      @roster[grade] << student_name
    end

    def grade(grade)
      @roster[grade]
    end

    def sort
      @roaster = @roster.map {|key,value| [key, value.sort]}.to_h
    end

end
