# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron


require File.expand_path(File.dirname(__FILE__) + "/environment") # Rails.root(Railsメソッド)を使用するために必要
rails_env = ENV['RAILS_ENV'] || :development # cronを実行する環境変数(:development, :product, :test)
set :environment, rails_env # cronを実行する環境変数をセット
ENV.each { |k, v| env(k, v) } #環境変数をwheneverのジョブに引き継ぐのに必要らしい
set :output, "#{Rails.root}/log/crontab.log" # cronのログ出力用ファイル

# every 1.minutes do
#   rake 'example:task'
# end

every :hour do
  rake 'article_state:update_article_state'
end

every 1.day, at: '9:00 am' do
  rake 'article_summary:mail_article_summary'
end

# Example:
#
# set :output, "/path/to/my/cron_log.log"
#
# every 2.hours do
#   command "/usr/bin/some_great_command"
#   runner "MyModel.some_method"
#   rake "some:great:rake:task"
# end
#
# every 4.days do
#   runner "AnotherModel.prune_old_records"
# end

# Learn more: http://github.com/javan/whenever
