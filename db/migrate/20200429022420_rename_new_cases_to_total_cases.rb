class RenameNewCasesToTotalCases < ActiveRecord::Migration[5.2]
  def change
    rename_column :days, :new_cases, :total_cases
  end
end
