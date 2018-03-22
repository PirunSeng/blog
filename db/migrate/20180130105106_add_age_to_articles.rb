class AddAgeToArticles < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :age, :integer, default: 0
  end
end
