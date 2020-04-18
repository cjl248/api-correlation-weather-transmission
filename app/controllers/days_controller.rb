class DaysController < ApplicationController

  def index
    days = Day.all
    render json: days.to_json(:except => [:created_at, :updated_at])
  end

end
