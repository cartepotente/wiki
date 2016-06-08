class AddCategoriaIdToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :categ_id, :integer
  end
end
