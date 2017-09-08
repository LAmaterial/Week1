require "pry"
class Cohort
  attr_reader :title, :start_date, :end_date, :students, :system_checks, :career_kickoff

  def initialize(title, start_date, end_date)
    @title = title
    @start_date = start_date
    @end_date = end_date
    @students = []
    @system_checks = []
    @career_kickoff = end_date + 4
  end

  def enroll(student)
    if @students.include?(student) == false
      @students << student
    end
  end

  def assign(system_check)
    @system_checks << system_check
  end

  def roster
    roster = ""
    roster += "#{@title}"
    @students.each do |student|
      roster += "#{student.name}, #{student.email}"
    end
    return roster
  end
end
