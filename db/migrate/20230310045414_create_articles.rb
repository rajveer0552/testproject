class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.string :name
      t.string :last_name
      t.integer :mobile_number

      t.timestamps
    end
  end
end
