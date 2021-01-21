class Api::V1::MeasurementsController < ApplicationController

  def index
    if params[:id]
      ingredient = Ingredient.find(params[:id])
      measurements = ingredient.measurements
      puts measurements
    end
    render json: measurements
  end

end
