class PhotosController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    respond_to do |format|
      format.json { render json: 'Your photos are bring processed..', status: :ok }
    end
  end
end
