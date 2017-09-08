class SystemCheck
  attr_reader :submissions
  def initialize(name, due)
    @name = name
    @due = due
    @submissions = []
  end

  def add_submission(submission)
    @submissions << submission
  end
end
