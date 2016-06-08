class AddCategoriumIdToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :cate_id, :string
    add_column :articles, :integer, :string
  end
end
