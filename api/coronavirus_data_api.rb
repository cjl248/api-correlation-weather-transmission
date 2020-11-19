# frozen_string_literal: true

require 'rest-client'
require 'json'

require  'pry'


NYS_ENDPOINT = "https://api.covidtracking.com/v1/states/ny/daily.json"

# Class for parsing coronavirus confirmed, death data
class GetCoronavirusData
  def data
    response = RestClient.get(NYS_ENDPOINT)
    response.body
  end

  def parse_data
    JSON.parse(self.data)
  end

  def date_data
    date_array = []
    parse_data.map do |date|
      date_array << {
        date: date['date'].to_s,
        new_tests: date['totalTestResultsIncrease'],
        new_positives: date['positiveIncrease'],
        total_positives: date['positive'],
        new_hospitalizations: date['hospitalizedIncrease'],
        current_hospitalizations: data['hospitalizedCurrently'],
        new_deaths: date['deathIncrease'],
        total_deaths: date['death']
      }
    end
    date_array
  end

end
