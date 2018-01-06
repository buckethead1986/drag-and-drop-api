class Api::V1::RelationshipsController < ActionController::API
  def index
    @relationships = Relationship.all
    render json: @relationships.to_json
  end
end
