class RemoveConditionFromDays < ActiveRecord::Migration[6.0]
  def change
    remove_column :days, :condition, :string
  end
end
