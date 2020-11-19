class AddNewDeathsToDays < ActiveRecord::Migration[6.0]
  def change
    add_column :days, :new_deaths, :integer
  end
end
