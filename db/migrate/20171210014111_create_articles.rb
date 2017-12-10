class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :title, default: ''
      t.text :text, default: ''

      t.timestamps
    end
  end
end
