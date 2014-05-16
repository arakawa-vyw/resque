class ApplicationFormManager
  @queue = :resque_sample # Woeker起動時に指定するQUEUE名

  def self.perform(message)
    af = ApplicationForm.find message
    af.update(status: :received)
  end
end

