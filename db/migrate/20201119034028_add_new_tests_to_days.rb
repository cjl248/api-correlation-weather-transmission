class AddNewTestsToDays < ActiveRecord::Migration[6.0]
  def change
    add_column :days, :new_tests, :integer
  end
end
