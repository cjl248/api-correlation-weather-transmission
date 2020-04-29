class RenameNewDeathsToTotalDeaths < ActiveRecord::Migration[5.2]
  def change
    rename_column :days, :new_deaths, :total_deaths
  end
end
