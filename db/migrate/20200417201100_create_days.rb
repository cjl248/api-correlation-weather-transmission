class CreateDays < ActiveRecord::Migration[5.2]
  def change
    create_table :days do |t|
      t.string :date
      t.integer :new_cases
      t.integer :new_deaths
      t.integer :high_temp
      t.integer :low_temp
      t.string :condition

      t.timestamps
    end
  end
end
