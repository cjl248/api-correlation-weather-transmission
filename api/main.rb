require_relative('./coronavirus_data_api.rb')

def main

  covid_data = GetCoronavirusData.new
  covid_data.date_data

end

main()
