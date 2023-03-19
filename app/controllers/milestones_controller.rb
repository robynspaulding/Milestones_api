class MilestonesController < ApplicationController
  before_action :authenticate_user, :milestone, only: [:show, :update, :destroy]

  def index
    user = User.find_by(id: current_user.id)
    if user
      milestones = Milestone.all
      render json: milestones.as_json 
    else
      render json: {error: "milestones  not found"}
    end
  end

  def create
    milestone = Milestone.new(
      kid_id: params[:kid_id],
      milestone_title: params[:milestone_title],
      date: params[:date],
      description: params[:description],
      image_url: params[:image_url]
    )

    milestone.save
    render json: milestone.as_json
  end

  def show
    render json: @milestone.as_json
  end

  def update
    @milestone.update(
      milestone_title: params[:milestone_title] || milestone.milestone_title,
      date: params[:date] || milestone.date,
      description: params[:description] || milestone.description,
      image_url: params[:image_url] || milestone.image_url
    )
    render json: @milestone.as_json

  end

  def destroy
    @milestone.destroy
    render json: {message: "milestone successfully removed"}
  end

  private
    def milestone
      @milestone ||= Milestone.find_by!(id: params.require(:id))
    end

end
