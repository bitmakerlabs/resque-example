class Job

  @queue=:my_job_queue

  def self.perform(text="default hello world")
    puts text
  end

end