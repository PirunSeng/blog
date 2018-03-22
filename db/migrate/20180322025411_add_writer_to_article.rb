class AddWriterToArticle < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :writer, :string, default: ''
  end
end
