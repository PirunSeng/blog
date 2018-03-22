class AddAvailabilityToArticles < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :availability, :integer, default: 0
  end
end
