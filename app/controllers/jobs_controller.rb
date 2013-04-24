require_relative "../workers/job.rb"

class JobsController < ApplicationController

  def add_job
    Resque.enqueue(Job, "hello world")
  end

end