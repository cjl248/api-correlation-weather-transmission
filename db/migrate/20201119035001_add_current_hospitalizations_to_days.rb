class AddCurrentHospitalizationsToDays < ActiveRecord::Migration[6.0]
  def change
    add_column :days, :current_hospitalizations, :string
  end
end
