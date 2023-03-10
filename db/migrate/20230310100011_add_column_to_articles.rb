class AddColumnToArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :adhar_number, :integer
    add_column :articles, :blood_group, :string
  end
end
