class RemoveAttrFromStudents < ActiveRecord::Migration[7.0]
  def change
    remove_column :articles, :age, :integer
    remove_column :articles, :address, :string
  end
end
