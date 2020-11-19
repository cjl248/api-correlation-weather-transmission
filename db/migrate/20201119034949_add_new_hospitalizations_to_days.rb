class AddNewHospitalizationsToDays < ActiveRecord::Migration[6.0]
  def change
    add_column :days, :new_hospitalizations, :integer
  end
end
