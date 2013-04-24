require "resque/tasks"
require 'resque_scheduler/tasks'

task "resque:setup" => :environment



namespace :resque do
  task :setup do
    Resque.schedule = YAML.load_file(
      # File.dirname(__FILE__) + '../../config/schedule.yml'
      Rails.root.join("config", "schedule.yml")
    )
  end
end