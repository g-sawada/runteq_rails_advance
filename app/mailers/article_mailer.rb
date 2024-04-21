class ArticleMailer < ApplicationMailer
  def report_summary
    @published_articles = Article.published
    @published_yesterday_articles = Article.published_at_yesterday
    mail(to: 'admin@exmample.com', subject: '公開済記事の集計結果')
  end
end
