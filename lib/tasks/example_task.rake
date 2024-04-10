namespace :example do
  desc "This is an example task"
  task task: :environment do
    puts "========================================
                  Example task executed!
          ========================================"
  end
end
