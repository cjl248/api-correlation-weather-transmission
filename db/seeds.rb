# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
#
#
coronavirus = GetCoronavirusData.new
coronavirus.date_data.map do |date|
  Day.find_or_create_by(date)
end
