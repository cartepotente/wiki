class RemoveCateIdFromArticles < ActiveRecord::Migration
  def change
    remove_column :articles, :cate_id, :string
    remove_column :articles, :integer, :string
  end
end
