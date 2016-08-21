class Api::V1::PatientsController < ApplicationController
  respond_to? :json
  skip_before_action :verify_authenticity_token

  def show
    render json: Patient.find(params[:id])
  end
end
