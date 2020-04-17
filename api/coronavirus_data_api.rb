# frozen_string_literal: true

require 'rest-client'
require 'json'

URL = 'https://coronavirus-tracker-api.herokuapp.com/v2/locations/225'

# Class for parsing coronavirus confirmed, death data
class GetCoronavirusData

  def data
    response = RestClient.get(URL)
    response.body
  end

  def parse_data
    data = JSON.parse(self.data)
    parsed_data = data['location']['timelines']
    parsed_data
  end

  def date_data
    date_array = []
    dates.map do |date|
      date_array << {
        date: date,
        new_cases: confirmed[date],
        new_deaths: deaths[date]
      }
    end
    date_array
  end

  private

  def dates
    parse_data['confirmed']['timeline'].keys
  end

  def confirmed
    parse_data['confirmed']['timeline']
  end

  def deaths
    parse_data['deaths']['timeline']
  end

end
