class KidsController < ApplicationController

  before_action :kid, only: [:show, :update, :destroy]

  def index
    kids = Kid.all
    render json: kids.as_json
  end

  def create
    kid = Kid.new(
      user_id: params[:user_id],
      name: params[:name],
      birthday: params[:birthday],
      image_url: params[:image_url]
    )

    kid.save
    render json: kid.as_json
  end

  def show
    render json: @kid.as_json
  end

  def update
    @kid.update(
      name: params[:name] || kid.name,
      birthday: params[:birthday] || kid.birthday,
      image_url: params[:image_url] || kid.image_url
    )
    render json: @kid.as_json

  end

  def destroy
    @kid.destroy
    render json: {message: "Kid successfully removed"}
  end

  private
    def kid
      @kid ||= Kid.find_by!(id: params.require(:id))
    end

end