class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :commenter, default: ''
      t.text :body, default: ''
      t.references :article, foreign_key: true

      t.timestamps
    end
  end
end
