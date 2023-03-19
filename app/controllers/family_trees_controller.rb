class FamilyTreesController < ApplicationController

  before_action :authenticate_user, :family_tree, only: [:show, :update, :destroy]

  def index
    user = User.find_by(id: current_user.id)
    if user
      render json: user.family_trees 
    else
      render json: {error: "family tree  not found"}
    end
  end

  def create
    family_tree = FamilyTree.new(
      user_id: params[:user_id],
      name: params[:name],
      relationship: params[:relationship],
      image_url: params[:image_url]
    )

    family_tree.save
    render json: family_tree.as_json
  end

  def show
    render json: @family_tree.as_json
  end

  def update
    @family_tree.update(
      name: params[:name] || family_tree.name,
      relationship: params[:relationship] || family_tree.relationship,
      image_url: params[:image_url] || family_tree.image_url
    )
    render json: @family_tree.as_json

  end

  def destroy
    @family_tree.destroy
    render json: {message: "Family member successfully removed from tree"}
  end

  private
    def family_tree
      @family_tree ||= FamilyTree.find_by!(id: params.require(:id))
    end
end
