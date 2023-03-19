class PhotosController < ApplicationController

  before_action :authenticate_user, :photo, only: [:show, :update, :destroy]

  def index
    user = User.find_by(id: current_user.id)
    if user
      render json: user.photos 
    else
      render json: {error: "photos  not found"}
    end
  end

  def create
    photo = Photo.new(
      user_id: params[:user_id],
      kid_id: params[:kid_id],
      date: params[:date],
      description: params[:description],
      image_url: params[:image_url]
    )

    photo.save
    render json: photo.as_json
  end

  def show
    render json: @photo.as_json
  end

  def update
    @photo.update(
      user_id: params[:user_id],
      kid_id: params[:kid_id],
      date: params[:date] || photo.date,
      description: params[:description] || photo.description,
      image_url: params[:image_url] || photo.image_url
    )
    render json: @photo.as_json

  end

  def destroy
    @photo.destroy
    render json: {message: "Photo successfully deleted"}
  end

  private
    def photo
      @photo ||= Photo.find_by!(id: params.require(:id))
    end

end
