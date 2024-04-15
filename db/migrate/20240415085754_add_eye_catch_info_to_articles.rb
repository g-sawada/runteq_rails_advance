class AddEyeCatchInfoToArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :eyecatch_align, :integer, default: 0, null: false
    add_column :articles, :eyecatch_width, :integer
  end
end
