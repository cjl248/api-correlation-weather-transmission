class RemoveHighTempFromDays < ActiveRecord::Migration[6.0]
  def change
    remove_column :days, :high_temp, :integer
  end
end
