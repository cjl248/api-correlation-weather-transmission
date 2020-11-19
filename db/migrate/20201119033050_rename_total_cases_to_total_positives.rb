class RenameTotalCasesToTotalPositives < ActiveRecord::Migration[6.0]
  def change
    rename_column :days, :total_cases, :total_positives
  end
end
