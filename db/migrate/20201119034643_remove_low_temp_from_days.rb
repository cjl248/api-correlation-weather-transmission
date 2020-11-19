class RemoveLowTempFromDays < ActiveRecord::Migration[6.0]
  def change
    remove_column :days, :low_temp, :integer
  end
end
