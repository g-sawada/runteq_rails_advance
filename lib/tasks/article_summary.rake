namespace :article_summary do
  desc "管理者へ公開記事数と昨日公開された記事情報を集計したメールを送信する"
  task mail_article_summary: :environment do
    ArticleMailer.report_summary.deliver_now
  end
end