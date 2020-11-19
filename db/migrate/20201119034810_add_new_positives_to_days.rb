class AddNewPositivesToDays < ActiveRecord::Migration[6.0]
  def change
    add_column :days, :new_positives, :integer
  end
end
