class ApplicationForm < ActiveRecord::Base
  after_save :push_queue

  def push_queue
    unless self.status_changed?
      Resque.enqueue(ApplicationFormManager, self.id)
    end
  end
end
