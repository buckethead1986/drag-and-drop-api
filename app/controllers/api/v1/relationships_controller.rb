class Api::V1::RelationshipsController < ActionController::API
  def index
    @relationships = Relationship.all
    render json: @relationships.to_json
  end

  def show
    @relationship = Relationship.find_by(id: params[:id])
    render json: @relationship.to_json
  end

  def create
    @relationship = Relationship.create(relationship_params)
    render json: @relationship.to_json
  end

  def destroy
    Relationship.find_by(id: params[:id]).destroy
  end

  private

  def relationship_params
    params.require(:relationship).permit(:follower_id, :followed_id)
  end
end
