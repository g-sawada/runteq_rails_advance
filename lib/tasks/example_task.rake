namespace :example do
  desc "This is an example task"
  task task: :environment do
    now = Time.now
    puts "========================================
          Example task executed! at #{now}
          ========================================"
  end
end
