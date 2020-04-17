# frozen_string_literal: true

require 'rest-client'
require 'json'

URL = 'https://coronavirus-tracker-api.herokuapp.com/v2/locations/225'

class GetCoronavirusData

  def get_coronavirus_data
    response = RestClient.get(URL)
    response.body
  end

end
